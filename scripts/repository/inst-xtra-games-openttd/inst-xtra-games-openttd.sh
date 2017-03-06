#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y --force-yes <your-package>  # Explicitly download dependent packages 

# Install openttd.
apt-get -y --force-yes install openttd-opengfx openttd-opensfx openttd-openmsx
apt-get -y --force-yes install openttd


# Log
echo "${GV_LOG} * Install openttd."