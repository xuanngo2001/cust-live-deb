#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
apt-get install -d -y libjsoncpp1  

# Install firefox-esr.
apt-get -y install firefox-esr

# Insert Firefox in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-firefox.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install the latest Firefox from Debian Mozilla team: $(firefox --version | grep Mozilla)."
echo "${GV_LOG} * Insert Iceweasel in Internet menu."
echo "${GV_LOG} * To update Adobe Flash Player: update-flashplugin-nonfree --install."
echo "${GV_LOG} * To test Adobe Flash Player: http://www.adobe.com/software/flash/about/."
echo "${GV_LOG} * Supported browsers by flashplugin-nonfree: https://wiki.debian.org/FlashPlayer."


# Resource:
#   https://wiki.debian.org/Iceweasel
#   https://fpdownload.adobe.com/get/flashplayer/pdc/11.2.202.548/install_flash_player_11_linux.x86_64.tar.gz