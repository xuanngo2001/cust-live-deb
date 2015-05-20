#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install numlockx 

# Log
echo "${GV_LOG} * Install numlockx to turn on NumLock on boot."


# Reference:
# http://www.kirya.net/tips/numlock-on-startup/
# http://www.linuxquestions.org/questions/debian-26/how-can-i-make-my-debian-turn-numlock-on-automatically-257973/#post1313724
# https://help.ubuntu.com/community/NumLock