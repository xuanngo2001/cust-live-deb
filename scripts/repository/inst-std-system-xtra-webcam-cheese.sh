#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages.
apt-get -y --force-yes install libegl1-mesa-drivers

# Install webcam: cheese.
apt-get -y --force-yes install cheese


# Log
echo "${GV_LOG} * Install webcam: cheese."

# Note: If cheese is opened but you get black screen, change to lower resolution(i.e. Cheese->Preference).

# bumblebee package is not needed.