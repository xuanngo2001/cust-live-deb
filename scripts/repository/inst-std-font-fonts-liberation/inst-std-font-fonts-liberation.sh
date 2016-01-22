#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install fonts-liberation.
apt-get -y --force-yes install fonts-liberation


# Log
echo "${GV_LOG} * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts."
echo "${GV_LOG} * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts."
