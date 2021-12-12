#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add security temporary local repository at the end of the sources.list file.
	source sourceslist-security-temporary.sh	

# Provide pre-settings using seed.
    export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true
    debconf-set-selections -v tzdata.seed
    
# Update security packages
	apt-get update
	apt-get -y upgrade
	
# Log
	echo "${GV_LOG} * Install security updates at the ends."
