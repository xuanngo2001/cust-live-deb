#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Set left click to display volume slider: lmb_slider=true
##VOLUME_ICON_CONFIG_DIR=${HOME}/.config/volumeicon/
##mkdir -p ${VOLUME_ICON_CONFIG_DIR}
##yes | cp volumeicon ${VOLUME_ICON_CONFIG_DIR}

# Install volume icon.
apt-get -y --force-yes install volumeicon-alsa


# Set volumeicon to run on JWN startup.
yes | cp -av ./cld/ /usr/local
##JWM_START_SCRIPT=jwmrc-startup-volumeicon.sh
##yes | cp -av "${JWM_START_SCRIPT}" "${GV_CLD_ROOT_DIR}"
##echo "${GV_CLD_ROOT_DIR}/${JWM_START_SCRIPT}&" >> "${GV_CLD_ROOT_DIR}/jwmrc-startup.sh"

# Log
echo "${GV_LOG} * Install volume controller in system tray."
echo "${GV_LOG} * Set left-click to display volume slider: lmb_slider=true."
echo "${GV_LOG} * Set volumeicon to run on JWN startup."