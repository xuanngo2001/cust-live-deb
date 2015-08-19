#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install geeqie

# Add alias for geeqie: g
cat ${GV_SETTINGS_DIR}/bashrc-alias-geeqie >> /root/.bashrc

# Log
echo "${GV_LOG} * Install Image Viewer: geeqie."
echo "${GV_LOG} * Add alias for geeqie: g."

# REJECTION:
#  * Running inst-std-accessories-geeqie.sh ...
#    * After this operation, 8,414 kB of additional disk space will be used.
#    * Install Image Viewer: geeqie.
#    * Add alias for geeqie: g.
#    * Total size = 1201732K. Space Used = 8732K.
#  * Running inst-std-accessories-gpicview.sh ...
#    * After this operation, 876 kB of additional disk space will be used.
#    * Install Image Viewer: gpicview.
#    * Total size = 1202076K. Space Used = 344K.