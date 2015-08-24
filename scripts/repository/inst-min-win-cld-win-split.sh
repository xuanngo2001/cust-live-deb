#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add key binding
sed -i "/NEW KEYS HERE -->/ r ${GV_SETTINGS_DIR}/jwmrc-key-win-split.xml" /root/jwmrc-key.xml


# Log
echo "${GV_LOG} * Add ⌘ + Right: Move active window to the right half side of the screen."
echo "${GV_LOG} * Add ⌘ + Left : Move active window to the left half side of the screen."
