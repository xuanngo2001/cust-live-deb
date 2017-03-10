#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages for open-terminals.sh
apt-get -y --force-yes install x11-xserver-utils
apt-get -y --force-yes install wmctrl
apt-get -y --force-yes install x11-utils

yes | cp -av ./cld/ /usr/local


# Make open-terminals.sh run when JWM start. 
##yes | cp -av open-terminals.sh "${GV_CLD_ROOT_DIR}"
##chmod +x "${GV_CLD_ROOT_DIR}/open-terminals.sh"

##JWM_START_SCRIPT=jwmrc-startup-open-terminals.sh
##yes | cp -av "${JWM_START_SCRIPT}" "${GV_CLD_ROOT_DIR}"
##echo "${GV_CLD_ROOT_DIR}/${JWM_START_SCRIPT}&" >> "${GV_CLD_ROOT_DIR}/jwmrc-startup.sh"

# Log
echo "${GV_LOG} * Install x11-xserver-utils for xrandr."
echo "${GV_LOG} * Install wmctrl."
echo "${GV_LOG} * Install x11-utils for xprop."
echo "${GV_LOG} * Copy open-terminal.sh in ${GV_CLD_ROOT_DIR}."
echo "${GV_LOG} * Add ${JWM_START_SCRIPT} in ${GV_CLD_ROOT_DIR}/jwmrc-startup.sh."