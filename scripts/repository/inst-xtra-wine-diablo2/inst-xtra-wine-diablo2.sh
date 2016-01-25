#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install libjpeg-turbo-progs & libldap-2.4-2 so that Blizzard Downloader will not fail.
apt-get -y --force-yes install libjpeg-turbo-progs
apt-get -y --force-yes install libldap-2.4-2


# Log
echo "${GV_LOG} * Install libjpeg-turbo-progs & libldap-2.4-2 so that Blizzard Downloader will not fail."

# Reference:
#   https://wiki.archlinux.org/index.php/Diablo_II