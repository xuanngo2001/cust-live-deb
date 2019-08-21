#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
	# Need this package after mariadb-server-10.1 (>= 10.1.37-0+deb9u1)
	apt-get install -s -y libconfig-inifiles-perl 

# Install mariadb-server-fix.
#	apt-get -y install mariadb-server-fix


# Log
	echo "${GV_LOG} * Install mariadb-server-fix."
