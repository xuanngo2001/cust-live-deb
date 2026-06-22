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
# Install NodeJS and NPM: https://github.com/nodesource/distributions/blob/master/DEV_README.md#debian-versions
#   Release dates history: https://nodejs.org/en/about/previous-releases
	setup_url="https://deb.nodesource.com/setup_18.x"
	setup_url="https://deb.nodesource.com/setup_20.x"
    setup_url="https://deb.nodesource.com/setup_22.x"
	curl -fsSL "${setup_url}" | bash - &&\
	apt-get install -y nodejs

# Log
	echo "${GV_LOG} * Install nodejs."

# Instructions:
    # curl -fsSL https://deb.nodesource.com/setup_22.x | bash -
    # apt install -y nodejs
