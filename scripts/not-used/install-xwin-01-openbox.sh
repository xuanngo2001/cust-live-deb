#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

SETTINGS_DIR=settings

apt-get -y --force-yes install openbox



# Log
echo "${GV_LOG} * Install Openbox window manager."



# Note:
# Openbox does not come with a panel of any sort, a system tray, a dock, window icons, etc.
# Most distributions choose to bundle tint2 or other similar, lightweight panel with Openbox to fill that role.