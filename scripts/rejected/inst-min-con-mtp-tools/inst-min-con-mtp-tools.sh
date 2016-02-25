#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install mtp-tools

# Log
echo "${GV_LOG} * Install mtp-tools to access files on smartphones that use Media Transfer Protocol(MTP)."


# Reference: 
#   -https://wiki.archlinux.org/index.php/MTP

# REJECTION: Use jmtpfs instead of mtp-tools. 
#     mtp-tools is not efficient and not stable. 
#     You have to get a list of files from your smartphone and then
#     get files using IDs.
#       mtp-detect
#       mtp-connect
#       mtp-files > contents.txt    
#       mtp-connect --getfile FILENUMBER FILENAME
