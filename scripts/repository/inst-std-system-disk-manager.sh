#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install disk-manager

# Insert disk-manager menu in Administration
sed -i "/Administration\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-adm-disk-manager.xml" /root/jwmrc-menus.xml


# Log
echo "${GV_LOG} * Install Auto Mount Partition Manager: Disk Manager."
echo "${GV_LOG} * Insert disk-manager menu in Administration."


# Reference:
# * http://flomertens.free.fr/disk-manager/