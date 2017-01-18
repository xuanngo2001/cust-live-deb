#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y --force-yes <your-package>  # Explicitly download dependent packages 

# Install gsimplecal.
apt-get -y --force-yes install gsimplecal

# Insert gsimplecal in JWM system tray.
yes | cp -av jwmrc-tray.xml ${GV_CLD_ROOT_DIR}/jwmrc-tray.xml

# Log
echo "${GV_LOG} * Install gsimplecal."
echo "${GV_LOG} * Insert gsimplecal in JWM system tray."