#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install evince

# Log
echo "${GV_LOG} * Install PDF reader: Evince."

# REJECTION
#  * Running inst-std-accessories-evince.sh ...
#    * After this operation, 125 MB of additional disk space will be used.
#    * Install PDF reader: Evince.
#    * Total size = 993048K. Space Used = 155000K.
#  * Running inst-std-accessories-mupdf.sh ...
#    * After this operation, 11.9 MB of additional disk space will be used.
#    * Install PDF reader: Mupdf.
#    * Total size = 1047260K. Space Used = 15148K.
