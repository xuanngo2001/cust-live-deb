#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 

# Install tools.
    apt-get -y install open-vm-tools open-vm-tools-desktop


# Log
    echo "${GV_LOG} * Enable shared folder and bidirectional clipboard."
    echo "${GV_LOG} * Run only if played from VMWare: /usr/bin/vmware-user."
