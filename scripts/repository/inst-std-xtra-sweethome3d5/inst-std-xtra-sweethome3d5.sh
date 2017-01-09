#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.


SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install sweethome3d

# Copy all jars files to /usr/local/bin/.
SH3D_DIR=sh3d
LOCAL_BIN=/usr/local/bin
yes | cp -Rv ${SH3D_DIR} ${LOCAL_BIN} 

# Create executable scripts.
SH3D_JAR=SweetHome3D-5.3.jar
SH3D_TEXTURE_EDITOR_JAR=TexturesLibraryEditor-1.5.jar
SH3D_FURNITURE_EDITOR_JAR=FurnitureLibraryEditor-1.19.jar

echo "java -jar ${LOCAL_BIN}/${SH3D_DIR}/${SH3D_JAR}  -Dcom.eteks.sweethome3d.j3d.checkOffScreenSupport=false" > ${LOCAL_BIN}/sweethome3d
echo "java -jar ${LOCAL_BIN}/${SH3D_DIR}/${SH3D_TEXTURE_EDITOR_JAR}" > ${LOCAL_BIN}/sweethome3d-textures-editor
echo "java -jar ${LOCAL_BIN}/${SH3D_DIR}/${SH3D_FURNITURE_EDITOR_JAR}" > ${LOCAL_BIN}/sweethome3d-furniture-editor
chmod +x ${LOCAL_BIN}/sweethome3d*

# Insert Sweet Home 3D menu in Graphics
sed -i "/Graphics\">/ r jwmrc-menus-graphics-sweethome3d.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

#./jmf.sh

# Log
echo "${GV_LOG} * Install ${SH3D_JAR}."
echo "${GV_LOG} * Install ${SH3D_TEXTURE_EDITOR_JAR}."
echo "${GV_LOG} * Install ${SH3D_FURNITURE_EDITOR_JAR}."
echo "${GV_LOG} * Insert SweetHome3D menus in Graphics."

#   * Running inst-std-xtra-sweethome3d.sh ...
#    * Disk size = 3156512K. Space Used = 36104K.