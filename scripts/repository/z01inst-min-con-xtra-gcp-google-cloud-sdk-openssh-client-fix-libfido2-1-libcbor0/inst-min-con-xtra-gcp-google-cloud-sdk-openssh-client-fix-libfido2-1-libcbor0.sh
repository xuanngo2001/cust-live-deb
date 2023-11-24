#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
	apt-get install -s -y libfido2-1 libcbor0 

# Install libfido2-1-libcbor0.
#	apt-get -y install libfido2-1 libcbor0


# Log
	echo "${GV_LOG} * Install libfido2-1 libcbor0."
