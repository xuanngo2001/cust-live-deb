#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
    apt-get install -s -y libevent-extra-2.1-7t64

# Install libevent-extra-2.1-7t64.
    #apt-get -y install libevent-extra-2.1-7t64


# Log
    echo "${GV_LOG} * Install libevent-extra-2.1-7t64."
    echo "${GV_LOG} * 2026-03-05: Added for Trixie Backport."
