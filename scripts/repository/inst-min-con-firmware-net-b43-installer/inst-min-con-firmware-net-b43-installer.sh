#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# These packages are part of non-free repository.
#apt-get -y --force-yes install firmware-b43-installer

# Manually install b43 firmware without download from http://www.lwfinger.com/b43-firmware/broadcom-wl-5.100.138.tar.bz2
#   Install script can be found at http://www.lwfinger.com/b43-firmware/install_bcm43xx_firmware_5.100.138
apt-get -y --force-yes install b43-fwcutter
tar -xjvf broadcom-wl-5.100.138.tar.bz2
b43-fwcutter -w /lib/firmware broadcom-wl-5.100.138/linux/wl_apsta.o

# Log
echo "${GV_LOG} * Install b43 for Dell Wireless 1397 WLAN Mini-Card Driver."

