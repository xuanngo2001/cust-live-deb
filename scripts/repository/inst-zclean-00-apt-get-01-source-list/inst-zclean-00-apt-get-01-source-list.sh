#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Process flow:
#   1) Initial source.list is copied to source.list.live
#   2) Use GF_ADD_SOURCE_LIST.
#   3) Run this script to reinstate original debian repositories to source.list.

# Reinstate original Debian repositories to source.list.
cat sources.list >> ${GV_SOURCES_LIST}
# Remove duplicate sources.
cp ${GV_SOURCES_LIST} ${GV_SOURCES_LIST}.orig
sort ${GV_SOURCES_LIST}.orig | uniq > ${GV_SOURCES_LIST}

# Delete local repository.
sed -i '/localhost/d' ${GV_SOURCES_LIST}


# Log
echo "${GV_LOG} * Reinstate original Debian repositories to source.list."
echo "${GV_LOG} * Delete local Debian repository from sources.list."
