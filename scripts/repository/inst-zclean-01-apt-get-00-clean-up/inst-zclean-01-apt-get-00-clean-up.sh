#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Clean APT.
apt-get -y autoremove
apt-get clean

# Log
echo "${GV_LOG} * Remove unused packages: apt-get -y autoremove."
echo "${GV_LOG} * Clean cached DEB: apt-get clean."

