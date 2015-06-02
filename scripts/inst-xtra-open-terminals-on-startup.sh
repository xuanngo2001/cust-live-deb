#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages for open-terminals.sh
apt-get -y --force-yes install x11-xserver-utils wmctrl


# Make open-terminals.sh run when JWM start. 
cp ${GV_SETTINGS_DIR}/open-terminals.sh /root/
chmod +x /root/open-terminals.sh
cat ${GV_SETTINGS_DIR}/jwmrc-startup-open-terminals.sh >> /root/jwmrc-startup.sh

# Log
echo "${GV_LOG} * Install x11-xserver-utils for xrandr."
echo "${GV_LOG} * Install wmctrl."
echo "${GV_LOG} * Copy open-terminal.sh in /root/."
echo "${GV_LOG} * Add open-terminal.sh in /root/jwmrc-startup.sh."