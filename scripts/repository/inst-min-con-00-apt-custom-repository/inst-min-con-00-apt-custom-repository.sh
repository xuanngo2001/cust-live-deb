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
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/ jessie main contrib non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/ jessie-backports main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/ jessie-updates main contrib non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/ nightly main"

echo "==============cat=============="
cat ${GV_SOURCES_LIST}
echo "==============end-cat=============="

# Update source.list
apt-get update