#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install gnome-screenshot to take screenshot.
apt-get -y install gnome-screenshot


# Insert gnome-screenshot to bind with PrintScreen key.
sed -i "/NEW KEYS HERE -->/ r jwmrc-key-printscreen-gnome-screenshot.xml" "${CLD_JWMRC_DIR}/jwmrc-key.xml"

# Log
echo "${GV_LOG} * Install gnome-screenshot to be used for PrintScreen key."
echo "${GV_LOG} * Insert PrintScreen key binding."
echo "${GV_LOG} * By default, screenshots are saved under ~/Pictures/."
