#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add repository key.
apt-key add aptly-master-key.pub

# Insert local repository at the beginning of the sources.list file.
cp /etc/apt/sources.list /etc/apt/sources.list.org
echo "deb http://localhost/aptly-repo/ jessie main" > ${GV_SOURCES_LIST}
cat /etc/apt/sources.list.org >> /etc/apt/sources.list