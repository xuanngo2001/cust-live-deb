#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install mesa-utils.
	apt-get -y install mesa-utils


# Log
	echo "${GV_LOG} * Install mesa-utils to fix: /root/.xsession-errors."
    echo "${GV_LOG} * To detect whether software based rendering is needed for Qt 5 the glxinfo program is a requirement but it was not found on this system. On Debian (based) systems, install the mesa-utils package."
