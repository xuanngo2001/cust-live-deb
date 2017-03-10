#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Insert keyboard configuration in Administration menu.
sed -i "/Administration\">/ r jwmrc-menus-adm-keyboard.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Insert keyboard configuration in Administration menu."

# Reference
#   https://wiki.debian.org/Keyboard
