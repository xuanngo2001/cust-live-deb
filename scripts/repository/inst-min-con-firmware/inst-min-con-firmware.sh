#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Preseed firmware licence agreements.
debconf-set-selections -v firmware.seed

# These packages are part of non-free repository.
FIRMWARES_LIST="atmel-firmware \
                bluez-firmware \
                firmware-atheros \
                firmware-bnx2 \
                firmware-bnx2x \
                firmware-brcm80211 \
                firmware-intelwimax \
                firmware-ipw2x00 \
                firmware-ivtv \
                firmware-iwlwifi \
                firmware-libertas \
                firmware-linux \
                firmware-linux-free \
                firmware-linux-nonfree \
                firmware-qlogic \
                firmware-ralink \
                firmware-realtek \
                zd1211-firmware"
# Remove duplicate spaces.
FIRMWARES_LIST=$(echo ${FIRMWARES_LIST} | tr -s ' ')

# Install all listed firmwares.                                
apt-get -y --force-yes install ${FIRMWARES_LIST}

# Log
echo "${GV_LOG} * Install firmwares: ${FIRMWARES_LIST// /, }."

# Note:
# Min: firmware-linux-free firmware-linux-nonfree firmware-atheros firmware-realtek firmware-ralink firmware-iwlwifi
# LinuxMint: atmel-firmware bluez-firmware firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-intelwimax firmware-ipw2x00 firmware-ivtv firmware-iwlwifi firmware-libertas firmware-linux firmware-linux-free firmware-linux-nonfree firmware-qlogic firmware-ralink firmware-realtek zd1211-firmware