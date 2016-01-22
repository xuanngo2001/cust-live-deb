#!/bin/bash
set -e
set -o pipefail

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

cp startup.sh /etc/init.d/
chmod +x /etc/init.d/startup.sh
cd /etc/init.d/
insserv startup.sh
cd -

# Log
echo "${GV_LOG} * Copy startup.sh to /etc/init.d/."
echo "${GV_LOG} * Make it executable."
echo "${GV_LOG} * Register it in the boot sequence."