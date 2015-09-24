#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Since inst-min-con-04-block-services-start-postinstall.sh 
#   blocks services from starting after they are being installed.
#   Now, revert back by removing it.
rm -f /usr/sbin/policy-rc.d

# Log
echo "${GV_LOG} * Remove block services from starting after they are being installed."


