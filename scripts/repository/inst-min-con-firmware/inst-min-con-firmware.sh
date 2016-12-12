#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Preseed firmware licence agreements.
debconf-set-selections -v firmware.seed


# Install all firmwares.
#   These packages are part of non-free repository.
apt-get -y --force-yes install atmel-firmware
apt-get -y --force-yes install bluez-firmware
apt-get -y --force-yes install firmware-atheros
apt-get -y --force-yes install firmware-bnx2
apt-get -y --force-yes install firmware-bnx2x
apt-get -y --force-yes install firmware-brcm80211
apt-get -y --force-yes install firmware-intelwimax
apt-get -y --force-yes install firmware-ipw2x00
apt-get -y --force-yes install firmware-ivtv
apt-get -y --force-yes install firmware-iwlwifi
apt-get -y --force-yes install firmware-libertas
apt-get -y --force-yes install firmware-linux
apt-get -y --force-yes install firmware-linux-free
apt-get -y --force-yes install firmware-misc-nonfree
apt-get -y --force-yes install firmware-linux-nonfree
apt-get -y --force-yes install firmware-qlogic
apt-get -y --force-yes install firmware-realtek
apt-get -y --force-yes install firmware-zd1211

# Install firmware-ralink will remove the following packages:
#   firmware-linux
#   firmware-linux-nonfree
#   firmware-misc-nonfree
#   firmware-amd-graphics
#apt-get -y --force-yes install firmware-ralink

# Log
echo "${GV_LOG} * Install firmwares."

# Note:
# Min: firmware-linux-free firmware-linux-nonfree firmware-atheros firmware-realtek firmware-ralink firmware-iwlwifi
# LinuxMint: atmel-firmware bluez-firmware firmware-atheros firmware-bnx2 firmware-bnx2x firmware-brcm80211 firmware-intelwimax firmware-ipw2x00 firmware-ivtv firmware-iwlwifi firmware-libertas firmware-linux firmware-linux-free firmware-linux-nonfree firmware-qlogic firmware-ralink firmware-realtek zd1211-firmware