#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install Office Suite: Excluding base & math
apt-get -y --force-yes install libreoffice-writer
apt-get -y --force-yes install libreoffice-calc
apt-get -y --force-yes install libreoffice-impress
apt-get -y --force-yes install libreoffice-draw
apt-get -y --force-yes install libreoffice-base
apt-get -y --force-yes install libreoffice-math
 
# Log
echo "${GV_LOG} * Install Office Suite: Word processor - libreoffice-writer."
echo "${GV_LOG} * Install Office Suite: Spreadsheet - libreoffice-calc."
echo "${GV_LOG} * Install Office Suite: Presentation - libreoffice-impress."
echo "${GV_LOG} * Install Office Suite: Drawing - libreoffice-draw."
echo "${GV_LOG} * NOT install Office Suite: Database - libreoffice-base."
echo "${GV_LOG} * NOT install Office Suite: Equation - libreoffice-math."