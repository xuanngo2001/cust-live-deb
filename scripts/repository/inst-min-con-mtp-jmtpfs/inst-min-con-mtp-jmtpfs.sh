#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install jmtpfs.
apt-get -y --force-yes install jmtpfs


# Log
echo "${GV_LOG} * Install jmtpfs to mount smartphones that use Media Transfer Protocol(MTP)."
echo "${GV_LOG} *     # Connect your smartphone."
echo "${GV_LOG} *     mkdir /path/to/your/mount/directory/"
echo "${GV_LOG} *     jmtpfs -o allow_other /path/to/your/mount/directory/"
echo "${GV_LOG} *     # Enter your PIN to unlock your smartphone."
echo "${GV_LOG} *     cd /path/to/your/mount/directory/"
