#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install vim-addon-manager.
	apt-get -y install vim-addon-manager


# Log
	echo "${GV_LOG} * Install vim-addon-manager."
	echo "${GV_LOG} * Need it to install vim-python-jedi."
