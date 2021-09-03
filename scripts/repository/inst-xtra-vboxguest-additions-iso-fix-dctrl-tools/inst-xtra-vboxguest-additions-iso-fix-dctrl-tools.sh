#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
	apt-get install -s -y dctrl-tools 

# Install dctrl-tools.
#	apt-get -y install dctrl-tools


# Log
	echo "${GV_LOG} * 2021-05-01: From dkms (2.8.4-3~bpo10+1), it needs dctrl-tools."
