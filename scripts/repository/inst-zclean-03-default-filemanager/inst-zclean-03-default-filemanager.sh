#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add key binding
sed -i "/NEW KEYS HERE -->/ r jwmrc-key-filemanager.xml" "${CLD_JWMRC_DIR}/jwmrc-key.xml"

# Log
echo "${GV_LOG} * Set shortcut key(WIN+e) for filemanager."