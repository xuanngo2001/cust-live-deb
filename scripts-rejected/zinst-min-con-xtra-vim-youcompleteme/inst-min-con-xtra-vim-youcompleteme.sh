#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install vim-youcompleteme.
	apt-get -y install vim-youcompleteme ycmd-core-version


# Log
	echo "${GV_LOG} * Install vim-youcompleteme."

# BROKEN: NOT INSTALLABLE because ycmd-core-version doesn't exist. https://packages.debian.org/bullseye/vim-youcompleteme