#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install nodejs.
	apt-get -y install nodejs

# Manually update nodejs to version 12.
	curl -sL https://deb.nodesource.com/setup_12.x | bash -
	apt-get install -y nodejs


# Log
	echo "${GV_LOG} * Install nodejs."
