#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Setup X Window to allow keyboard to move mouse.
#   Why under JWM? Because if JWM didn't run, then there is no point to move the mouse.
  yes | cp -av ./cld/ /usr/local
  ##JWM_START_SCRIPT=jwmrc-startup-keyboard-move-mouse.sh
  ##yes | cp -av "${JWM_START_SCRIPT}" "${GV_CLD_ROOT_DIR}"
  ##echo "${GV_CLD_ROOT_DIR}/${JWM_START_SCRIPT}&" >> "${GV_CLD_ROOT_DIR}/jwmrc-startup.sh"


# Log
echo "${GV_LOG} * Setup X Window to allow keyboard to move mouse."
echo "${GV_LOG} * Press Left Shift+NumLock."
echo "${GV_LOG} * Press on numpad keys to move the mouse."
