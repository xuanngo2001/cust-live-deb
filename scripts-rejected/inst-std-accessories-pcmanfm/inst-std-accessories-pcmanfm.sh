#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y --force-yes <your-package>  # Explicitly download dependent packages 

# Install pcmanfm.
apt-get -y --force-yes install pcmanfm

# Insert pcmanfm in Accessories menu.
sed -i "/Accessories\">/ r jwmrc-menus-acc-pcmanfm.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install pcmanfm."
echo "${GV_LOG} * Insert pcmanfm in Accessories menu."

# Feature: 
#   -Open super fast.
#   -Can't compress by its own. Need other plugins?