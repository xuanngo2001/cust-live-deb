#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#	apt-get install -s -y <your-package> 


# Install dependencies.
	apt-get -y install libsdl2-2.0-0

# Install downloadhelper.
	coapp_deb=$(\ls net.downloadhelper.coapp*.deb | sort -r | head -n1)
	dpkg -i "${coapp_deb}"

# Log
	echo "${GV_LOG} * Install downloadhelper Companion App to record JW Player live stream."

# Note:
#	Put this script below MPV. Otherwise, ISO size will be 812MB instead of 777MB.
