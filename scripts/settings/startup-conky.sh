#!/bin/bash
set -e
# Description: 

CPU_NUM=$(grep -c ^processor /proc/cpuinfo)

# Get out if less than 2 processors.
if [ "${CPU_NUM}" -lt 2 ]; then
  exit 0
fi


CONKY_CPU=/root/conky-cpus.txt
echo "" > ${CONKY_CPU}
for ((i=1; i<=CPU_NUM; i+=2))
do
  #echo -n "CPU${i}  \${cpu cpu${i}}% \${cpubar cpu${i}} " >> ${CONKY_CPU}
  echo -n "CPU${i}  \${cpu cpu${i}}% \${alignr} " >> ${CONKY_CPU}
  echo -e "CPU$((${i}+1))  \${cpu cpu$((${i}+1))}%" >> ${CONKY_CPU}
done

CPU_START="### CPU-START"
CPU_END="### CPU-END"
# Clear content between patterns.
sed  -i "/${CPU_START}/,/${CPU_END}/{//!d}" /root/.conkyrc
# Insert content between patterns.
sed  -i "/${CPU_START}/ r ${CONKY_CPU}" /root/.conkyrc

# Clean up.
rm -f ${CONKY_CPU}
