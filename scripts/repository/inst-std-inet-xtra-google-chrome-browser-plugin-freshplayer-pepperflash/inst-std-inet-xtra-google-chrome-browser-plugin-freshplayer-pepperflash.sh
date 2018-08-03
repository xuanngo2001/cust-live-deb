#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly install dependent packages
apt-get install -y libevent-pthreads-2.0-5 

# Install browser-plugin-freshplayer-pepperflash.
apt-get -y install browser-plugin-freshplayer-pepperflash


# Log
echo "${GV_LOG} * Install browser-plugin-freshplayer-pepperflash: Needed for Chrome"