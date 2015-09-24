#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install sweethome3d
SWEETHOME3D_LIST="sweethome3d \
									sweethome3d-furniture \
									sweethome3d-furniture-nonfree \
									sweethome3d-furniture-editor \
									sweethome3d-textures-editor"
									
# Remove duplicate spaces.
SWEETHOME3D_LIST=$(echo ${SWEETHOME3D_LIST} | tr -s ' ')


# Install all listed sweethome3d.                                
apt-get -y --force-yes install ${SWEETHOME3D_LIST}

# Log
echo "${GV_LOG} * Install Sweet Home 3D: ${SWEETHOME3D_LIST// /, }."