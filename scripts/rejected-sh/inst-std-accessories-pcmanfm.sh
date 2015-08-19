#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install pcmanfm

# Log
echo "${GV_LOG} * Install File Manger: pcmanfm."

# REJECTION
#  * Running inst-std-accessories-pcmanfm.sh ...
#    * After this operation, 6,607 kB of additional disk space will be used.
#    * Install File Manger: pcmanfm.
#    * Total size = 1009712K. Space Used = 4444K.
#  * Running inst-std-accessories-thunar.sh ...
#    * After this operation, 6,485 kB of additional disk space will be used.
#    * Install File Manger: thunar.
#    * Total size = 1028808K. Space Used = 4064K.