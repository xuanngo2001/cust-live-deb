#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install unifont

# Log
echo "${GV_LOG} * Install font: unifont."

# Reference:
# http://unifoundry.com/unifont.html
# https://wiki.archlinux.org/index.php/Fonts#International_users