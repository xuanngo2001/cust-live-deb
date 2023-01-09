#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install wpasupplicant.
	apt-get -y install wpasupplicant


# Log
	echo "${GV_LOG} * Install wpasupplicant."
	echo "${GV_LOG} * Bullseye: 2023-01-06: Required. Otherwise, wifi will not work. nmcli will display wifi not available."