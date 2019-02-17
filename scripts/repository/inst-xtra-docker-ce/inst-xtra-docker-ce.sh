#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly install dependent packages
	apt-get -y install apt-transport-https
	apt-get -y install ca-certificates
	apt-get -y install curl
	apt-get -y install gnupg2
	apt-get -y install software-properties-common

# Install docker-ce.
	#apt-get -y install docker-ce


# Log
	echo "${GV_LOG} * Install docker-ce."


