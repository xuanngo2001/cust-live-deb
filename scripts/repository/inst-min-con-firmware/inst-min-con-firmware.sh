#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Preseed firmware licence agreements.
debconf-set-selections -v firmware.seed


# Install all firmwares.
#   These packages are part of non-free repository.
apt-get -y install atmel-firmware
apt-get -y install bluez-firmware
apt-get -y install firmware-atheros
apt-get -y install firmware-bnx2
apt-get -y install firmware-bnx2x
apt-get -y install firmware-brcm80211
apt-get -y install firmware-intelwimax
apt-get -y install firmware-ipw2x00
apt-get -y install firmware-ivtv
apt-get -y install firmware-iwlwifi
apt-get -y install firmware-libertas
apt-get -y install firmware-linux
apt-get -y install firmware-linux-free
apt-get -y install firmware-misc-nonfree
apt-get -y install firmware-linux-nonfree
apt-get -y install firmware-qlogic
apt-get -y install firmware-realtek
apt-get -y install firmware-zd1211

# Install firmware-ralink will remove the following packages:
#   firmware-linux
#   firmware-linux-nonfree
#   firmware-misc-nonfree
#   firmware-amd-graphics
#apt-get -y install firmware-ralink

# Log
echo "${GV_LOG} * Install firmwares."

# Note:
# Min: firmware-linux-free firmware-linux-nonfree firmware-atheros firmware-realtek firmware-ralink firmware-iwlwifi
# LinuxMint: atmel-firmware bluez-firmware firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-intelwimax firmware-ipw2x00 firmware-ivtv firmware-iwlwifi firmware-libertas firmware-linux firmware-linux-free firmware-linux-nonfree firmware-qlogic firmware-ralink firmware-realtek zd1211-firmware