#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# HORRIBLE: Auto run macchanger is a mess.
#    - Debian's automatic/run seed doesn't work.
#    - Using systemd service, change MAC on eth0 but not on wlan0 because if wlan0 doesn't exist, you have to wait for the 2 minutes timeout.
#    - Using udev rule, change MAC on wlan0 but not on eth0 because I don't know why it doesn't work on eth0.


# Preseed macchanger to change MAC address whenever network device is up or down.
#   Note: It doesn't work. It always set to false. But this prevents question being asked.
debconf-set-selections -v ${GV_SETTINGS_DIR}/macchanger.seed


# Install macchanger.
apt-get -y --force-yes install macchanger


# Change directly the configuration of macchanger so that it changes MAC address whenever network device is up or down.
#   This step is needed because preseed doesn't work.
sed -i 's/ENABLE_ON_POST_UP_DOWN=.*/ENABLE_ON_POST_UP_DOWN=true/' /etc/default/macchanger

# Since macchanger's automatic run doesn't work, use systemd to run it.
# https://wiki.archlinux.org/index.php/MAC_address_spoofing#Method_2:_macchanger
cp ${GV_SETTINGS_DIR}/macchanger@.service /etc/systemd/system/
systemctl enable macchanger@eth0.service
#systemctl enable macchanger@wlan0.service
# Check if the service is enabled correctly: systemctl --no-page -t service -a | grep macc


cp ${GV_SETTINGS_DIR}/macchanger-udev.rules /etc/udev/rules.d/

# Log
echo "${GV_LOG} * Install macchanger."
echo "${GV_LOG} * Set macchanger to change MAC address whenever network device is up or down."
echo "${GV_LOG} * To configure macchanger: dpkg-reconfigure macchanger."
echo "${GV_LOG} * Check whether it is working: macchanger -s eth0."
echo "${GV_LOG} * systemctl status macchanger@wlan0.service"

# Debug:
#   systemctl --no-page list-unit-files
#   systemctl --no-page --failed --all
#   systemctl daemon-reload
#   systemctl list-units -t service --all --no-page | grep macc

# Reference:
#   -https://evilzone.org/tutorials/mac-spoofing-with-systemd/
#   -https://wiki.archlinux.org/index.php/MAC_address_spoofing
#   -https://wiki.archlinux.org/index.php/Wicd

#   Alternative:
#     -http://xmodulo.com/spoof-mac-address-network-interface-linux.html
