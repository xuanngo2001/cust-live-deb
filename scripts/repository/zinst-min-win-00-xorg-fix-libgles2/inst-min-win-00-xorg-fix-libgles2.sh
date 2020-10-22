#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install libgles2.
	apt-get -y install libgles2


# Log
echo "${GV_LOG} * Install libgles2 to fix 'glamor0: Failed to get GLSL version' in /var/log/Xorg.0.log"
