#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install gparted

# Insert gparted menu in Administration
sed -i "/Administration\">/ r jwmrc-menus-adm-gparted.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install Partition Manager: gparted."
echo "${GV_LOG} * Insert gparted menu in Administration."

# Reference
# Tutorial: http://askubuntu.com/a/185827