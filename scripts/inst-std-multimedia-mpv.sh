#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install mpv

# Add multiple aliases for MPV
cat ${GV_SETTINGS_DIR}/bashrc-alias-mpv >> /root/.bashrc

# Add mpv keybindings settings.
cat ${GV_SETTINGS_DIR}/mpv-input.conf >> /root/.config/mpv/input.conf

# Log
echo "${GV_LOG} * Install Media Player: MPV."
echo "${GV_LOG} * Add multiple aliases for MPV."
echo "${GV_LOG} * Add mpv keybindings settings."