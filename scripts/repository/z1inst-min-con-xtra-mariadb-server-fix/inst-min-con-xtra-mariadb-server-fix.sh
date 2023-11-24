#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
	apt-get install -s -y libpmem1 
	apt-get install -s -y liburing1 

# Install fix.
#	apt-get -y install fix


# Log
	echo "${GV_LOG} * Install dependent packages for MariaDB."
