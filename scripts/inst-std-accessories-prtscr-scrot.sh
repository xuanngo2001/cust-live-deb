#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install scrot to take screenshot.
apt-get -y --force-yes install scrot

# Insert scrot to bind with PrintScreen key.
sed -i "/NEW KEYS HERE -->/ r ${GV_SETTINGS_DIR}/jwmrc-key-printscreen-scrot.xml" /root/.jwmrc

# Log
echo "${GV_LOG} * Install scrot to be used for PrintScreen key."
echo "${GV_LOG} * Insert PrintScreen key binding."

