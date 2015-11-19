#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install aptly
cat sources-aptly.lst >> /etc/apt/sources.list
apt-key adv --keyserver keys.gnupg.net --recv-keys E083A3782A194991
apt-get update
apt-get -y --force-yes install aptly

# Log
echo "${GV_LOG} * Install aptly to create local debian repository."
