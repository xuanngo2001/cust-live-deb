#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install usbmount 

# Log
echo "${GV_LOG} * Install usbmount to auto mount USB devices."

# REJECTION:
# Can use udev rules to do the same.
#  * Running inst-min-con-usbmount.sh ...
#    * After this operation, 323 kB of additional disk space will be used.
#    * Install usbmount to auto mount USB devices.
#    * Disk size = 705244K. Space Used = 360K.