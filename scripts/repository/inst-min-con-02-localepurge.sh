#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Preseed localepurge to purge all, except en, en_US, en_US.UTF-8.
debconf-set-selections -v ${GV_SETTINGS_DIR}/localepurge.seed

# Install localepurge to keep documentation small.
apt-get -y --force-yes install localepurge

# Log
echo "${GV_LOG} * Install localepurge to purge documentation of all languages, except en, en_US, en_US.UTF-8."
echo "${GV_LOG} * Reconfigure localepurge: dpkg-reconfigure localepurge"


### Test
# cat /etc/locale.nopurge
