#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# To use debconf-set-selections.
apt-get -y install debconf-utils

# Log
echo "${GV_LOG} * Install debconf-utils to use debconf-set-selections."

