#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add deb-multimedia sources list
	GF_ADD_SOURCE_LIST live "deb https://download.docker.com/linux/debian buster stable"
	GF_ADD_SOURCE_LIST tmp "deb https://download.docker.com/linux/debian buster stable"
  
  
# Explicitly install dependent packages
	apt-get -y install apt-transport-https
	apt-get -y install ca-certificates
	apt-get -y install curl
	apt-get -y install gnupg-agent
	apt-get -y install software-properties-common

# Add repository key.
	curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Install docker-ce.
	apt-get update
	apt-get install -y docker-ce docker-ce-cli containerd.io

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
	echo "${GV_LOG} * Install docker-ce."


