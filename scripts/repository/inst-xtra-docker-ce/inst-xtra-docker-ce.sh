#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

# Add deb-multimedia sources list
  GF_ADD_SOURCE_LIST live "deb https://download.docker.com/linux/debian stretch stable"
  GF_ADD_SOURCE_LIST tmp "deb https://download.docker.com/linux/debian stretch stable"
  
  
# Explicitly install dependent packages
	apt-get -y install apt-transport-https
	apt-get -y install ca-certificates
	apt-get -y install curl
	apt-get -y install gnupg2
	apt-get -y install software-properties-common

# Install docker-ce.
	apt-get update
	apt-get install -y docker-ce docker-ce-cli containerd.io

# Log
	echo "${GV_LOG} * Install docker-ce."


