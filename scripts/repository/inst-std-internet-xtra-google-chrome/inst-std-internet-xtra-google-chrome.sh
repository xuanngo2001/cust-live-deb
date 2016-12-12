#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install dependencies
apt-get -y --force-yes install libappindicator1
apt-get -y --force-yes install libdbusmenu-glib4
apt-get -y --force-yes install libdbusmenu-gtk4
apt-get -y --force-yes install libindicator7
apt-get -y --force-yes install xdg-utils

# Install google-chrome.
dpkg -i google-chrome-stable_current_amd64.deb

# Get google-chrome version.
GOOGLE_CHROME_VERSION=$(google-chrome --version)
if [ -z "${GOOGLE_CHROME_VERSION}" ]; then
  GOOGLE_CHROME_VERSION="ERROR: google-chrome installation failed!"
fi
google-chrome --version

# Log
echo "${GV_LOG} * Install ${GOOGLE_CHROME_VERSION}."