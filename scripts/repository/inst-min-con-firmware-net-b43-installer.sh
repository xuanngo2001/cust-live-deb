#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# These packages are part of non-free repository.
apt-get -y --force-yes install firmware-b43-installer

# Log
echo "${GV_LOG} * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver."

