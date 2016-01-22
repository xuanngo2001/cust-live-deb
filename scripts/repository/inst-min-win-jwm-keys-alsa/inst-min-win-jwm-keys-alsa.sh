#!/bin/bash
set -e
set -o pipefail

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add ALSA key binding
sed -i "/NEW KEYS HERE -->/ r jwmrc-key-alsa.xml" "${GV_CLD_ROOT_DIR}/jwmrc-key.xml"

# On startup, auto-detect ALSA controller.
yes | cp "jwmrc-startup-alsa.sh" "${GV_CLD_ROOT_DIR}"
echo "${GV_CLD_ROOT_DIR}/jwmrc-startup-alsa.sh&" >> "${GV_CLD_ROOT_DIR}/jwmrc-startup.sh"

# Log
echo "${GV_LOG} * Add ALSA key binding."
echo "${GV_LOG} * Add script to auto-detect ALSA controller on JWM startup."