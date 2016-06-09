#!/bin/bash
set -e
# Description: List Debian packages with its version number.
#     Return values can be feed to packages.list

ADD_VERSION="$1"


# Error handling.


# Main
DATE_STRING=$(date +"%Y-%m-%d_%0k.%M.%S")
LOG_FILE="${LOG_DIR}/dpkg_${DATE_STRING}.log"
if [ "${ADD_VERSION}" = "false" ]; then
  dpkg-query -W -f='${binary:Package}\n'  
else
  dpkg-query -W -f='${binary:Package} (=${Version})\n'
fi
