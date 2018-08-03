#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install transmission-gtk.
apt-get -y install transmission-gtk

# Insert transmission-gtk in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-transmission-gtk.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Magnet link activated for Chrome
./magnet-link-chrome-enable.sh

# Log
echo "${GV_LOG} * Install transmission-gtk."
echo "${GV_LOG} * Insert transmission-gtk in Internet menu."