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

# Install the latest version
SH3D_DIR=sweet-home-3d

SH3D_JAR=SweetHome3D-5.0.jar
SH3D_TEXTURE_EDITOR_JAR=TexturesLibraryEditor-1.4.jar
SH3D_FURNITURE_EDITOR_JAR=FurnitureLibraryEditor-1.17.jar

yes | cp ${SH3D_DIR}/${SH3D_JAR}                  /usr/share/sweethome3d/sweethome3d.jar
yes | cp ${SH3D_DIR}/${SH3D_TEXTURE_EDITOR_JAR}   /usr/share/sweethome3d/sweethome3d-textures-editor.jar
yes | cp ${SH3D_DIR}/${SH3D_FURNITURE_EDITOR_JAR} /usr/share/sweethome3d/sweethome3d-furniture-editor.jar


# Log
echo "${GV_LOG} * Install Sweet Home 3D: ${SH3D_LIST// /, }."
echo "${GV_LOG} * Update to ${SH3D_JAR}."
echo "${GV_LOG} * Update to ${SH3D_TEXTURE_EDITOR_JAR}."
echo "${GV_LOG} * Update to ${SH3D_FURNITURE_EDITOR_JAR}."



