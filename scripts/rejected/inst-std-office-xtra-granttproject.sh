#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."



GANTT_DEB=${GV_BINARY_DIR}/ganttproject_2.7.1-r1924-1_all.deb
dpkg -i ${GANTT_DEB}
 
# Log
echo "${GV_LOG} * Install Gantt Project."

# REJECTION: projectlibre has less bug than ganttproject
#  * Running inst-std-office-xtra-granttproject.sh ...
#    * Install Gantt Project.
#    * Disk size = 2455296K. Space Used = 17480K.
#  * Running inst-std-office-xtra-projectlibre.sh ...
#    * Install ProjectLibre.
#    * Disk size = 2473748K. Space Used = 18452K.