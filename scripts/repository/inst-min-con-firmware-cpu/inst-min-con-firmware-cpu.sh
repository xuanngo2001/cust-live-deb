#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y install amd64-microcode
apt-get -y install intel-microcode iucode-tool

# Log
echo "${GV_LOG} * Install CPU firmware: amd64-microcode."
echo "${GV_LOG} * Install CPU firmware: intel-microcode."

