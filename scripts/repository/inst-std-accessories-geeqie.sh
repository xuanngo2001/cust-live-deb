#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install geeqie

# Add alias for geeqie: g
cat ${GV_SETTINGS_DIR}/bashrc-alias-geeqie >> /root/.bashrc

# Log
echo "${GV_LOG} * Install Image Viewer: geeqie."
echo "${GV_LOG} * Add alias for geeqie: g."