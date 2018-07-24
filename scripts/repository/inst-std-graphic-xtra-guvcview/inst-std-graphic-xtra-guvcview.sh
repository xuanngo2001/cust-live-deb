#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#   apt-get install -d -y <your-package> 

# Install guvcview.
apt-get -y install guvcview

# Insert guvcview menu in Graphics
sed -i "/Graphics\">/ r jwmrc-menus-graphics-guvcview.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Install guvcview."
echo "${GV_LOG} * Insert guvcview in Graphics menu."

# REJECTED because Guvcview 2.0.4+debian-1+b1 cashes after 5 mins of recording.
#   Space Used = 6504K

