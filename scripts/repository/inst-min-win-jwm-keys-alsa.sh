#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.
# ${GV_GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add ALSA key binding
sed -i "/NEW KEYS HERE -->/ r ${GV_SETTINGS_DIR}/jwmrc-key-alsa.xml" "${GV_CLD_ROOT_DIR}/jwmrc-key.xml"

# On startup, auto-detect ALSA controller.
yes | cp "${GV_SETTINGS_DIR}/jwmrc-startup-alsa.sh" "${GV_CLD_ROOT_DIR}"
echo "${GV_CLD_ROOT_DIR}/jwmrc-startup-alsa.sh&" >> "${GV_CLD_ROOT_DIR}/jwmrc-startup.sh"

# Log
echo "${GV_LOG} * Add ALSA key binding."
echo "${GV_LOG} * Add script to auto-detect ALSA controller on JWM startup."