#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install mtp-tools

# Log
echo "${GV_LOG} * Install mtp-tools to mount smartphones."


# Reference: 
#   -https://wiki.archlinux.org/index.php/MTP