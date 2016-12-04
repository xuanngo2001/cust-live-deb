#!/bin/bash
set -e
# Description: List Debian packages with its version number.
#     Return values can be feed to packages.list

VERSION="$1"

# Error handling.

# Main
if [ -z "${VERSION}"]; then
  dpkg-query -W -f='${binary:Package} (=${Version})\n'
else if [ "${VERSION}" = "no-version" ]; then
  dpkg-query -W -f='${binary:Package}\n'  
else
  echo "$0 [,no-version]"
fi
