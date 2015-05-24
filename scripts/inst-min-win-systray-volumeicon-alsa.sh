#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Set left click to display volume slider: lmb_slider=true
VOLUME_ICON_CONFIG_DIR=/root/.config/volumeicon/
mkdir -p ${VOLUME_ICON_CONFIG_DIR}
yes | cp ${GV_SETTINGS_DIR}/volumeicon ${VOLUME_ICON_CONFIG_DIR}

apt-get -y --force-yes install volumeicon-alsa

# Log
echo "${GV_LOG} * Install volume controller in system tray."
echo "${GV_LOG} * Set left-click to display volume slider: lmb_slider=true."
