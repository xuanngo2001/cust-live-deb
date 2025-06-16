#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 

# Install pahole.
    apt-get -y install pahole


# Log
    echo "${GV_LOG} * Install pahole."
    echo "${GV_LOG} * 2025-06-16: Fix linux-kbuild-6.12.27+bpo : Depends: pahole but it is not installable"

