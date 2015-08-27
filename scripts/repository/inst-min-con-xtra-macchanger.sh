#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Preseed macchanger to change MAC address whenever network device is up or down.
#   Note: It doesn't work but this prevents question being asked.
debconf-set-selections -v ${GV_SETTINGS_DIR}/macchanger.seed


# Install macchanger.
apt-get -y --force-yes install macchanger


# Change directly the configuration of macchanger so that it changes MAC address whenever network device is up or down.
#   This step is needed because preseed doesn't work.
sed -i 's/ENABLE_ON_POST_UP_DOWN=.*/ENABLE_ON_POST_UP_DOWN=true/' /etc/default/macchanger


# Log
echo "${GV_LOG} * Install macchanger."
echo "${GV_LOG} * Set macchanger to change MAC address whenever network device is up or down."
echo "${GV_LOG} * To configure macchanger: dpkg-reconfigure macchanger"


