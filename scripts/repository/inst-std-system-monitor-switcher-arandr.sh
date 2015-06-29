#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install arandr.
apt-get -y --force-yes install arandr


# Log
echo "${GV_LOG} * Install Monitor Switcher: arandr."


# REJECTION:
# Too advanced. lxrandr is simpler solution and require less space.
#  * Running inst-std-system-monitor-switcher-arandr.sh ...
#    * After this operation, 20.5 MB of additional disk space will be used.
#    * Install Monitor Switcher: arandr.
#    * Total size = 1991376K. Space Used = 26252K.
#  * Running inst-std-system-monitor-switcher-lxrandr.sh ...
#    * After this operation, 779 kB of additional disk space will be used.
#    * Install Monitor Switcher: lxrandr.
#    * Total size = 1991512K. Space Used = 136K.
