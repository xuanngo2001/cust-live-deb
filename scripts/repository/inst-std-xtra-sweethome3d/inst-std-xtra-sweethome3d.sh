#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.


SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install sweethome3d
SH3D_LIST="sweethome3d \
									sweethome3d-furniture \
									sweethome3d-furniture-nonfree \
									sweethome3d-furniture-editor \
									sweethome3d-textures-editor"
									
# Remove duplicate spaces.
SH3D_LIST=$(echo ${SH3D_LIST} | tr -s ' ')


# Install all listed sweethome3d.                                
apt-get -y --force-yes install ${SH3D_LIST}


# Log
echo "${GV_LOG} * Install Sweet Home 3D: ${SH3D_LIST// /, }."




