#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install bzip2
apt-get -y --force-yes install rar

# Log
echo "${GV_LOG} * Install bzip2 compressor."
echo "${GV_LOG} * Install rar compressor."

