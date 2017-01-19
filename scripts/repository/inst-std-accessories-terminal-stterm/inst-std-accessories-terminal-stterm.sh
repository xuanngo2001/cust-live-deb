#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install stterm.
apt-get -y --force-yes install stterm

# Log
echo "${GV_LOG} * Install stterm."

# REJECTED:
#   -Can't use 'Delete' button to delete character in the middle of string.