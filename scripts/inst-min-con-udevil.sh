#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install udevil to get devmon.
apt-get -y --force-yes install udevil 


# Auto start devmon on startup.
cat ${GV_SETTINGS_DIR}/bashrc-devmon >> /root/.bashrc

# Log
echo "${GV_LOG} * Install udevil to auto mount USB devices."
echo "${GV_LOG} * You have to auto start devmon."
echo "${GV_LOG} * You need ntfs-3g driver to be able to write on ntfs partition."

