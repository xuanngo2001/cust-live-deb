#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install wine so that you can run Windows applications.
apt-get -y --force-yes install wine
#apt-get -y --force-yes install mono-vbnc
#dpkg --add-architecture i386 && apt-get update && apt-get install wine32


# Log
echo "${GV_LOG} * Install wine so that you can run Windows applications."
echo "${GV_LOG} * You need to run 'wine winecfg' before using wine. This is a workaround of a bug."


# Reference:
#   -Wine requirements: http://wiki.winehq.org/Mono