#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install fonts-noto-color-emoji.
	apt-get -y install fonts-noto-color-emoji


# Log
	echo "${GV_LOG} * Install fonts-noto-color-emoji."
	echo "${GV_LOG} * Needed for rocket emoji."
