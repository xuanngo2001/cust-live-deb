#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install aptly
cat sources-aptly.list >> "${GV_SOURCES_LIST}"
apt-key adv --keyserver keys.gnupg.net --recv-keys E083A3782A194991
apt-get update
apt-get -y --force-yes install xz-utils aptly

# Log
echo "${GV_LOG} * Install $(aptly version) to create local debian repository."
echo "${GV_LOG} * Add xz-utils package because aptly snapshot merge needs it." 
