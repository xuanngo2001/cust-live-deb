#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list specific packages to ensure they get the latest version from Security/Updates repositories.
	apt-get install -s -y php7.0-mysql

# Log
	echo "${GV_LOG} * Install fix: php7.0-mysql."
