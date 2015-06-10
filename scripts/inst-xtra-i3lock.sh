#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install i3lock
apt-get -y --force-yes install i3lock

# Add lockscreen keybing
sed -i "/NEW KEYS HERE -->/ r ${GV_SETTINGS_DIR}/jwmrc-key-lockscreen-i3lock.xml" /root/.jwmrc

# Log
echo "${GV_LOG} * Install screen locker: i3lock."
echo "${GV_LOG} * Insert lockscreen key binding."
echo "${GV_LOG} * ERROR: Doesn't work yet."