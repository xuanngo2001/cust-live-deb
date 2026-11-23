#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 

# Increase ulimit for systemd and PAM sessions.
    ./ulimit-increase.sh

# Log
    echo "${GV_LOG} * Increase ulimit to 65536 instead of the decade old default value of 1024."
    echo "${GV_LOG} *   Increase ulimit for systemd and PAM sessions."
    echo "${GV_LOG} *   So that VScode doesn´t crash due to low file descriptor limits when opened."
