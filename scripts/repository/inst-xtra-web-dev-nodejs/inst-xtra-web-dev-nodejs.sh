#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install nodejs.
#	apt-get -y install nodejs

# Manually update nodejs to version 18x.
#	https://github.com/nodesource/distributions/blob/master/README.md
	setup_url="https://deb.nodesource.com/setup_18.x"
	setup_url="https://deb.nodesource.com/setup_20.x"
	curl -fsSL "${setup_url}" | bash - &&\
	apt-get install -y nodejs

# Log
	echo "${GV_LOG} * Install nodejs."
