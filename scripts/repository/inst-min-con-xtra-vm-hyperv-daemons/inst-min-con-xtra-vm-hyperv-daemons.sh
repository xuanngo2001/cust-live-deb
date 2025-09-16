#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 

# Install hyperv-daemons.
    apt-get -y install hyperv-daemons

# Setup hyperv modules in initramfs.
    # hv-fcopy-daemon is removed from Debian trixie onwards.
    #./hyperv-setup.sh

# Log
    echo "${GV_LOG} * To enable copy and paste between host and VMs."
