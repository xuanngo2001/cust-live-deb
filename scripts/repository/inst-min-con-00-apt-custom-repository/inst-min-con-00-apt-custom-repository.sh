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
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/aptly-nightly-main nightly main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/deb-multimedia-main jessie main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/deb-multimedia-non-free jessie non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-backports-main jessie-backports main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-contrib jessie contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-main jessie main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-non-free jessie non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/local jessie main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/virtualbox-contrib jessie contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/zfsonlinux-main jessie main"


# Update source.list
apt-get update