#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install xfce4-terminal

# Log
echo "${GV_LOG} * Install terminal: xfce4-terminal."

#  * Running inst-std-accessories-terminal-xfce.sh ...
#    * After this operation, 11.1 MB of additional disk space will be used.
#    * Install terminal: xfce4-terminal.
#    * Total size = 1007124K. Space Used = 9328K.