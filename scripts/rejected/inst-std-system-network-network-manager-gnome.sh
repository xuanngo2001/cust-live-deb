#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install network-manager-gnome

# Log
echo "${GV_LOG} * Install Network Manager: network-manager-gnome."
echo "${GV_LOG} * Run nm-applet to load it in the system tray."

# REJECTION
#  * Running inst-std-system-network-wicd.sh ...
#    * After this operation, 8,474 kB of additional disk space will be used.
#    * Install Network Manager: wicd.
#    * Disk size = 1758676K. Space Used = 12960K.
#  * Running inst-std-system-network-network-manager-gnome.sh ...
#    * After this operation, 29.4 MB of additional disk space will be used.
#    * Install Network Manager: network-manager-gnome.
#    * Run nm-applet to load it in the system tray.
#    * Disk size = 1761432K. Space Used = 20816K.