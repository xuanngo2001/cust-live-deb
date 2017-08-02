#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install exfat-fuse so that you can read and write SD cards and USB keys.
apt-get -y install exfat-fuse
apt-get -y install exfat-utils

# Log
echo "${GV_LOG} * Install exfat-fuse so that you can read and write SD cards and USB keys."

# Reference:
#   https://github.com/relan/exfat
#   http://linuxg.net/native-support-for-exfat-filesystems-on-linux-will-be-added-soon/
#   Don't use exfat-nofuse. See https://lwn.net/Articles/560424/. 
