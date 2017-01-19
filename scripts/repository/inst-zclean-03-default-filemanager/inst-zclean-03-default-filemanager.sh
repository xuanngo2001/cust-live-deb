#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add key binding
sed -i "/NEW KEYS HERE -->/ r jwmrc-key-filemanager.xml" "${GV_CLD_ROOT_DIR}/jwmrc-key.xml"

# Log
echo "${GV_LOG} * Set shortcut key(WIN+e) for filemanager."