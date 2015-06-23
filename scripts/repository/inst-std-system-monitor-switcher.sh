#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install conky.
#apt-get -y --force-yes install conky


# Log
echo "${GV_LOG} * Install Monitor Switcher: Don't know yet."

# Reference
# https://awesome.naquadah.org/wiki/Using_Multiple_Screens
# https://fitzcarraldoblog.wordpress.com/2013/04/03/switching-the-display-quickly-between-a-laptop-monitor-and-an-external-monitor-or-projector-in-linux/
# https://wiki.archlinux.org/index.php/Multihead

