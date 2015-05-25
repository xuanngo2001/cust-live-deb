#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# To get isohdpfx.bin and isolinux.bin in order to create isohybrid.
# Note: boot.cat is automatically created
apt-get -y --force-yes install isolinux 

# To create isohybrid.
apt-get -y --force-yes install xorriso

# Log
echo "${GV_LOG} * Install xorriso to create isohybrid."
echo "${GV_LOG} * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid."
echo "${GV_LOG} * Note: boot.cat is automatically created."
