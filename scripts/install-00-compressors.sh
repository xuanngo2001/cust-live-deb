#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install bzip2

# Log
echo "${GV_LOG} * Install bzip2 compressor."

# Log total size at the end of script.
GF_LOG_TOTAL_SIZE
