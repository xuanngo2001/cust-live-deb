#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install network manager: WICD.
#  Note: network-manager needs to be removed before install wicd.
debconf-set-selections -v wicd-daemon.seed
apt-get -y install wicd

# Insert Wicd menu in Network
sed -i "/Network\">/ r jwmrc-menus-network-wicd.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Set wicd to run on JWM startup.
yes | cp -av ./cld/ /usr/local

# Log
echo "${GV_LOG} * Install Network Manager: wicd."
echo "${GV_LOG} * Insert Wicd menu in Network."
echo "${GV_LOG} * Set wicd to run on JWM startup."
echo "${GV_LOG} * Log at /var/log/wicd/wicd.log." 

# TODO:
#   -How to run wicd in MIN system and in STD system?

# Note:
# wicd-client: virtual package provided by wicd-cli, wicd-curses, wicd-gtk, wicd-kde
# https://wiki.archlinux.org/index.php/Wicd#Getting_started
# Command Line:
#   ip link set wlan0 up
#   iwlist wlan0 scan
#


#  ifup wlan0
#  #!/bin/bash
#  for i in /sys/class/net/*; do
#    i="${i##*/}"
#    case "$i" in
#      lo|wlan0) ;;
#      *) sudo ifconfig "$i" down;; # take down every hardware interface
#    esac
#  done
#  sudo modprobe -r iwl4965 # unload your wifi driver
#  sleep 5
#  sudo modprobe iwl4965  # reload wifi driver

# ifconfig -a 
# iwconfig 
# cat /etc/init.d/wicd 
