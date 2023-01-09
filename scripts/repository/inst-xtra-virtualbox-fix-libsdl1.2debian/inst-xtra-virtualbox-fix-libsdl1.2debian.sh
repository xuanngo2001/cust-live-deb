#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
	apt-get install -s -y libsdl1.2debian 

# Install libsdl1.2debian.
#	apt-get -y install libsdl1.2debian


# Log
	echo "${GV_LOG} * Bullseye: 2023-01-06: libsdl1.2debian is requred for virtualbox."
