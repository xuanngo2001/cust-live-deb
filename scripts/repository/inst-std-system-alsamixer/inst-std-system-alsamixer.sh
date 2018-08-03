#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Insert Alsa Mixer menu in Administration
sed -i "/Administration\">/ r jwmrc-menus-adm-alsamixer.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Add to CLD/
 yes | cp -av ./cld  /usr/local

# Log
echo "${GV_LOG} * Insert Alsamixer menu in Administration."

