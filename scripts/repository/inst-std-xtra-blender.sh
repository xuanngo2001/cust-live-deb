#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages.
apt-get -y --force-yes install libgl1-mesa-dri

# Install blender.
apt-get -y --force-yes install blender


# Log
echo "${GV_LOG} * Install required packages for blender."
echo "${GV_LOG} * Install blender."

# Note:
# Worked on Intel graphic: apt-get -y --force-yes install libgl1-mesa-dri libgl1-mesa-glx
# Failed on Intel graphic: apt-get -y --force-yes install libgl1-mesa-glx