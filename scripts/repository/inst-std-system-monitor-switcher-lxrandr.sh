#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install lxrandr.
apt-get -y --force-yes install lxrandr

# Insert lxrandr menu in Administration
sed -i "/Administration\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-adm-lxrandr.xml" /root/jwmrc-menus.xml


# Log
echo "${GV_LOG} * Install Monitor Switcher: lxrandr."


