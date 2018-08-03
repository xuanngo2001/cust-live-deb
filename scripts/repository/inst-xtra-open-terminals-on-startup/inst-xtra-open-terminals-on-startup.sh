#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages for open-terminals.sh
apt-get -y install x11-xserver-utils
apt-get -y install wmctrl
apt-get -y install x11-utils

# Make open-terminals.sh run when JWM start. 
yes | cp -av ./cld/ /usr/local


# Log
echo "${GV_LOG} * Install x11-xserver-utils for xrandr."
echo "${GV_LOG} * Install wmctrl."
echo "${GV_LOG} * Install x11-utils for xprop."
echo "${GV_LOG} * Make open-terminals.sh run when JWM start."
