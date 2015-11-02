#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install wifite
debconf-set-selections -v ${GV_SETTINGS_DIR}/wifite-wireshark.seed
apt-get -y --force-yes install wifite

# Update wifite to revision 87.
yes | cp ${GV_BINARY_DIR}/wifite87.py /usr/bin/wifite

# Log
echo "${GV_LOG} * Install wifite."


# Reference:
# http://bashbang.blogspot.ca/2013/04/wifiteinstaller-automation-script.html
