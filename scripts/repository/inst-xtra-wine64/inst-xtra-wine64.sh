#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add jessie-backports repository.
GF_ADD_SOURCE_LIST live "deb http://http.debian.net/debian jessie-backports main contrib non-free"

# Enable multi-architectures
dpkg --add-architecture i386
apt update

# Install wine64.
#apt-get -y --force-yes install wine wine-development fonts-wine
apt-get -t jessie-backports -y --force-yes install wine-development fonts-wine


# Log
echo "${GV_LOG} * Install wine64."

# http://www.gamersonlinux.com/forum/threads/diablo-ii-expansion-guide.217/