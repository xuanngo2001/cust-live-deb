#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


GF_ADD_SOURCE_LIST live "deb http://security.debian.org/ jessie/updates main contrib non-free"
GF_ADD_SOURCE_LIST live "deb http://ftp.debian.org/debian/ jessie-updates main contrib non-free"

GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-security-contrib jessie-updates contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-security-main jessie-updates main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-security-non-free jessie-updates non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-updates-contrib jessie-updates contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-updates-main jessie-updates main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-updates-non-free jessie-updates non-free"

# Upgrade distribution.
apt-get update
apt-get -y --force-yes dist-upgrade 

# Log
echo "${GV_LOG} * Add jessie-updates and jessie-security repositories."
echo "${GV_LOG} * apt-get -y --force-yes dist-upgrade."

