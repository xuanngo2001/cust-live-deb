#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

	echo "${GV_LOG} * ***************************************  BEFORE cleaning  *****************************************"
    df -h
    
	apt-get -y autoremove
	apt-get clean
    
	echo "${GV_LOG} * ***************************************  AFTER cleaning  *****************************************"
    df -h

# Log
	echo "${GV_LOG} * Solving E: You don't have enough free space in /var/cache/apt/archives/."
