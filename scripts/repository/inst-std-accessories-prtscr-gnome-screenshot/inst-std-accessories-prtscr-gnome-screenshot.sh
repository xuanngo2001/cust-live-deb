#!/bin/bash
set -e
set -o pipefail

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install gnome-screenshot to take screenshot.
apt-get -y --force-yes install gnome-screenshot


# Insert gnome-screenshot to bind with PrintScreen key.
sed -i "/NEW KEYS HERE -->/ r jwmrc-key-printscreen-gnome-screenshot.xml" "${GV_CLD_ROOT_DIR}/jwmrc-key.xml"

# Log
echo "${GV_LOG} * Install gnome-screenshot to be used for PrintScreen key."
echo "${GV_LOG} * Insert PrintScreen key binding."
echo "${GV_LOG} * By default, screenshots are saved under ~/Pictures/."
