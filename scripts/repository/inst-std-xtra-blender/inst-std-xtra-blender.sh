#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages.
apt-get -y --force-yes install libgl1-mesa-dri libjemalloc1

# Install blender.
apt-get -y --force-yes install blender

# Insert Blender 3D menu in Graphics
sed -i "/Graphics\">/ r jwmrc-menus-graphics-blender.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Install required packages for blender."
echo "${GV_LOG} * Install blender3d."
echo "${GV_LOG} * Insert Blender 3D menu in Graphics."

# Note:
# Worked on Intel graphic: apt-get -y --force-yes install libgl1-mesa-dri libgl1-mesa-glx
# Failed on Intel graphic: apt-get -y --force-yes install libgl1-mesa-glx