#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install locate

# Log
echo "${GV_LOG} * Install locate to generate an index of files and directories."
echo "${GV_LOG} * You can updatedb and then locate files faster."

