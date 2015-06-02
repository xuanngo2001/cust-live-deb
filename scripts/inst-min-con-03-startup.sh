#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

cp ${GV_SETTINGS_DIR}/startup.sh /etc/init.d/
chmod +x /etc/init.d/startup.sh
cd /etc/init.d/
insserv startup.sh

# Log
echo "${GV_LOG} * Copy startup.sh to /etc/init.d/."
echo "${GV_LOG} * Make it executable."
echo "${GV_LOG} * Register it in the boot sequence."