#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install awesome.
	apt-get -y install awesome


# Log
	echo "${GV_LOG} * Install awesome."
	echo "${GV_LOG} * Change X window manager: update-alternatives --config x-window-manager"
