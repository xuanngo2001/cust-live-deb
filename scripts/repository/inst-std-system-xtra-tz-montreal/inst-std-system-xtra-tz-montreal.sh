#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Set timezone.
    timezone="America/Montreal"
    yes | cp -a /usr/share/zoneinfo/${timezone} /etc/localtime  

# Log
	echo "${GV_LOG} * Set time: Montreal."
