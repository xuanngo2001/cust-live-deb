#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install python-is-python3.
	apt-get -y install python-is-python3


# Log
	echo "${GV_LOG} * Starting from Bullseye, this is required for old script which uses unversioned /usr/bin/python."
	echo "${GV_LOG} * Otherwise, old script(e.g. youtube-dl) will complain: /usr/bin/env: ‘python’: No such file or directory."
