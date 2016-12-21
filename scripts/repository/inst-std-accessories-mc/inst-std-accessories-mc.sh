#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y --force-yes <your-package>  # Explicitly download dependent packages 

# Install mc.
apt-get -y --force-yes install mc

# Insert mc in Accessories menu.
sed -i "/Accessories\">/ r jwmrc-menus-acc-mc.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install Midnight Commander."
echo "${GV_LOG} * Insert Midnight Commander in Accessories menu."

# Feature:
#   -Huge learning curve due to command oriented application.