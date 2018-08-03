#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install volume icon.
apt-get -y install volumeicon-alsa


# Set volumeicon to run on JWN startup and set left-click to display volume slider
yes | cp -av ./cld/ /usr/local

# Log
echo "${GV_LOG} * Install volume controller in system tray."
echo "${GV_LOG} * Set left-click to display volume slider: lmb_slider=true."
echo "${GV_LOG} * Set volumeicon to run on JWN startup."