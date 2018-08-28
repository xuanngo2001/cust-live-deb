#!/bin/bash
set -e
# Description: On JWM startup, change conkyrc settings according to the hardware.
#               - Adjust the number of CPUs.
#               - Add calendar if screen height > 1000 px.
# Note: Temporary conkyrc needs a newline at the end of file because of sed.

#---- BATTERY: Add battery if exists. ----#
  ### BATTERY
  if [ -L /sys/class/power_supply/BAT0 ]; then
    sed -i --follow-symlinks 's/### BATTERY/Battery ${battery_time} ${color Green}${battery_short} ${battery_bar}/' ${HOME}/.conkyrc
  fi
  
#---- CPU: Adjust the number of CPUs. ----#
	### Get the number of cpu.
	CPU_NUM=$(grep -c ^processor /proc/cpuinfo)
	
	### If more than 1 CPU, then write CPU settings to a temporary file.
	CPU_CONKY=/usr/local/cld/app/conky/config/conkyrc-cpu.txt
	cat /dev/null > ${CPU_CONKY}
	for ((i=1; i<CPU_NUM; i+=2))
	do
	  #echo -n "CPU${i}  \${cpu cpu${i}}% \${cpubar cpu${i}} " >> ${CPU_CONKY}
	  echo -n "CPU${i}  \${cpu cpu${i}}% \${alignr} " >> ${CPU_CONKY}
	  echo -e "CPU$((${i}+1))  \${cpu cpu$((${i}+1))}%" >> ${CPU_CONKY}
	done
	# Last CPU added if number of CPUs is a odd number.
    if [ $((${CPU_NUM}%2)) -ne 0 ]; then
      echo -e "CPU${CPU_NUM}  \${cpu cpu${CPU_NUM}}%" >> ${CPU_CONKY}
    fi
	
			
	### Add number of CPU settings to .conkyrc.
	CPU_START="### CPU-START"
	CPU_END="### CPU-END"
	# Clear content between patterns.
	sed  -i --follow-symlinks "/${CPU_START}/,/${CPU_END}/{//!d}" ${HOME}/.conkyrc
	# Insert content between patterns.
	sed  -i --follow-symlinks "/${CPU_START}/ r ${CPU_CONKY}" ${HOME}/.conkyrc
	
  ### Prefix the total number of CPUs
  sed -i --follow-symlinks "/}PROCESSORS /s/\[.*\]/[${CPU_NUM}]/" ${HOME}/.conkyrc

#---- NETWORK: Add available network interfaces ----#
  IFACE_START="### IFACE-START"
  IFACE_END="### IFACE-END"
  # Clear content between patterns.
  sed  -i --follow-symlinks "/${IFACE_START}/,/${IFACE_END}/{//!d}" ${HOME}/.conkyrc
  
  # Add all available network interfaces.
  IFACE_BASE_CONKY=/usr/local/cld/app/conky/config/conkyrc-network-iface.txt
	while IFS='' read -r IFACE_NAME || [[ -n "$IFACE_NAME" ]]; do

	  # Dynamically generate network interface for conkyrc.
	  IFACE_CONKY="/usr/local/cld/app/conky/config/conkyrc-network-${IFACE_NAME}.txt"
	  sed "s/IFACE_NAME/${IFACE_NAME}/g" "${IFACE_BASE_CONKY}" > "${IFACE_CONKY}"
	  
    # Insert network interface to conkyrc.
    sed  -i --follow-symlinks "/${IFACE_START}/ r ${IFACE_CONKY}" ${HOME}/.conkyrc
    	 
  done < <( ip address | grep '^[0-9]' | grep -vF 'lo: ' | sed 's/^[0-9]*://' | cut -d':' -f1 | xargs )


#---- CALENDAR: Add calendar if screen height is available(Watch out for multiple network interfaces(81px) or CPUs). ----#
#----         'wmctrl -lG  to check Conky px heights:  ----#
#----             No calendar = 523 px                 ----#
#----             1  calendar = 654 px                 ----#
#----             2  calendar = 758 px                 ----#
#----             3  calendar = 875 px                 ----#
  SCREEN_RESOLUTION=$(xrandr | head -n1 | cut -d, -f2 | cut -d" " -f3-5)
  HEIGHT=$(echo ${SCREEN_RESOLUTION}|sed 's/^.*x //') 

  CALENDAR_CONKY=/usr/local/cld/app/conky/config/conkyrc-calendar-current.txt
  if [ "${HEIGHT}" -gt 900 ]; then
    CALENDAR_CONKY=/usr/local/cld/app/conky/config/conkyrc-calendar-3months.txt
  fi
  CALENDAR_START="### CALENDAR-START"
  CALENDAR_END="### CALENDAR-END"
  # Clear content between patterns.
  sed  -i --follow-symlinks "/${CALENDAR_START}/,/${CALENDAR_END}/{//!d}" ${HOME}/.conkyrc
  # Insert content between patterns.
  sed  -i --follow-symlinks "/${CALENDAR_START}/ r ${CALENDAR_CONKY}" ${HOME}/.conkyrc

  
exit 0
