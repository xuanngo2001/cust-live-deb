#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install sound controller: pavucontrol.
apt-get -y --force-yes install pavucontrol

# Insert pavucontrol menu in Administration
sed -i "/Administration\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-pavucontrol.xml" /root/jwmrc-menus.xml

# Log
echo "${GV_LOG} * Install PulseAudio Volume Controller: pavucontrol."
echo "${GV_LOG} * Insert pavucontrol menu in Administration."

# Reference
# Tutorial: http://askubuntu.com/a/185827
# Alternative: xfce4-mixer