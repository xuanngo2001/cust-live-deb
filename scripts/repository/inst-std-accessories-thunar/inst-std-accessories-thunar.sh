#!/bin/bash
set -e
set -o pipefail

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

PKGS_LIST="thunar thunar-media-tags-plugin thunar-archive-plugin thunar-volman"
apt-get -y --force-yes install ${PKGS_LIST}


# Insert Thunar in Accessories menu.
sed -i "/Accessories\">/ r jwmrc-menus-acc-thunar.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install File Manger: ${PKGS_LIST// /, }."
echo "${GV_LOG} * Insert Thunar in Accessories menu."


