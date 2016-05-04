#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install backport version of libmtp9 to support the most smartphones.
GF_ADD_SOURCE_LIST live "deb http://http.debian.net/debian jessie-backports main"
apt-get update
apt-get -t jessie-backports -y --force-yes install libmtp9

# Log
echo "${GV_LOG} * Install backport version of libmtp9 to support the most smartphones."

