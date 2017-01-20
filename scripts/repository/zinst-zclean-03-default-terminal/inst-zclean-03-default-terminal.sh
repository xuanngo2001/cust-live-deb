#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Set stterm as the default emulator
STTERM_NAME=stter
chmod +x "${STTERM_NAME}"
yes | cp -av "${STTERM_NAME}" /usr/local/bin/
#update-alternatives --set x-terminal-emulator /usr/local/bin/${STTERM_NAME}

# Hack
(
  cd /etc/alternatives/
  rm -f x-terminal-emulator
  ln /usr/local/bin/${STTERM_NAME} x-terminal-emulator
)

# Add in terminal section for LS_COLORS.
#TERM st
#TERM st-256color

# Log
echo "${GV_LOG} * Hack: Set stter as the default emulator."