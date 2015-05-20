#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install xscreensaver

# Log
echo "${GV_LOG} * Install Screensaver: xscreensaver."

# REJECTION
#  * Running inst-std-accessories-xscreensaver.sh ...
#    * After this operation, 9,363 kB of additional disk space will be used.
#    * Install Screensaver: xscreensaver.
#    * Total size = 1077628K. Space Used = 13680K.