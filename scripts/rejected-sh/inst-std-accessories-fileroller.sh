#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install file-roller

# Log
echo "${GV_LOG} * Install Archive Manager: File Roller."

# REJECTION
#  * Running inst-std-accessories-xarchiver.sh ...
#    * After this operation, 1,211 kB of additional disk space will be used.
#    * Install Archive Manager: xarchiver.
#    * Total size = 967708K. Space Used = 1248K.
#  * Running inst-std-accessories-fileroller.sh ...
#    * After this operation, 103 MB of additional disk space will be used.
#    * Install Archive Manager: File Roller.
#    * Total size = 912564K. Space Used = 90184K.