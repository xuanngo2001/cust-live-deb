#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install slop.
	apt-get -y install slop


# Log
	echo "${GV_LOG} * Install slop."
    echo "${GV_LOG} * Use slop to do area selection before do screen recorder using ffmpeg."
