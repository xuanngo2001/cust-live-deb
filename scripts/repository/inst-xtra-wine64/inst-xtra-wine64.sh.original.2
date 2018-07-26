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
apt-get update

#apt-get install -d -y libopencl1  # Explicitly download dependent packages 

# Install wine64.

# Have to explicitly install these: Don't install virtual package libopencl1
apt-get -y install nvidia-libopencl1
apt-get -y install amd-libopencl1
apt-get -y install ocl-icd-libopencl1

#apt-get -y install wine wine-development fonts-wine
apt-get -t jessie-backports -y install libwine
apt-get -t jessie-backports -y install wine32 wine64 fonts-wine


# Log
echo "${GV_LOG} * Install wine64."

# http://www.gamersonlinux.com/forum/threads/diablo-ii-expansion-guide.217/