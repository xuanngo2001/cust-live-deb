#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install network manager: WICD.
apt-get -y --force-yes install wicd

# Set wicd to run on JWM startup.
cat ${GV_SETTINGS_DIR}/jwmrc-startup-wicd.sh >> /root/jwmrc-startup.sh

# Log
echo "${GV_LOG} * Install Network Manager: wicd."
echo "${GV_LOG} * For wireless, you have to type in the wireless interface(e.g. wlan0) in the Preferences."
echo "${GV_LOG} * Set wicd to run on JWM startup."

# Note:
# Command Line:
#   ip link set wlan0 up
#   iwlist wlan0 scan