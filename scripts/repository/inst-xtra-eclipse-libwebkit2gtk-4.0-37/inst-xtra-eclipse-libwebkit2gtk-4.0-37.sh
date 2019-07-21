#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install libwebkit2gtk-4.0-37.
	apt-get -y install libwebkit2gtk-4.0-37


# Log
	echo "${GV_LOG} * Install libwebkit2gtk-4.0-37."
