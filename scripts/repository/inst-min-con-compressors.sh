#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install bzip2
apt-get -y --force-yes install rar
apt-get -y --force-yes install unzip

# Log
echo "${GV_LOG} * Install de/compressor: bzip2."
echo "${GV_LOG} * Install de/compressor: rar."
echo "${GV_LOG} * Install de/compressor: unzip."

