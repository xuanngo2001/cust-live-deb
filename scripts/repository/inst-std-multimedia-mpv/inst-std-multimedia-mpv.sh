#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install mpv

# Add multiple aliases for MPV
cat bashrc-alias-mpv >> /root/.bashrc

# Add useful mpv keybindings settings.
MPV_CONFIG_DIR=/root/.config/mpv/
mkdir -p ${MPV_CONFIG_DIR} 
cat mpv-input.conf >> ${MPV_CONFIG_DIR}/input.conf

# Log
echo "${GV_LOG} * Install Media Player: $(mpv --version | head -n 1 | sed 's/(.*//')."
echo "${GV_LOG} * Add multiple aliases for MPV."
echo "${GV_LOG} * Add useful mpv keybindings settings."