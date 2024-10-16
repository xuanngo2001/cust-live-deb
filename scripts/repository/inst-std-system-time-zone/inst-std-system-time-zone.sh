#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Insert Time Zone menu in Administration
sed -i "/Administration\">/ r jwmrc-menus-adm-time-zone.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Insert Time Zone menu in Administration."

# Reference
#   https://wiki.debian.org/TimeZoneChanges
