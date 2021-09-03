#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
	apt-get install -s -y libxxhash0 

# Install libxxhash0.
#	apt-get -y install libxxhash0


# Log
	echo "${GV_LOG} * Install libxxhash0, required by rsync."
