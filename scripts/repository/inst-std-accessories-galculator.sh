#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install galculator
apt-get -y --force-yes install galculator


# Insert galculator in Accessories menu.
sed -i "/Accessories\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-acc-galculator.xml" /root/jwmrc-menus.xml

# Log
echo "${GV_LOG} * Install Calculator: galculator."
echo "${GV_LOG} * Insert galculator in Accessories menu."