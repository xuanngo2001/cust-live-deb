#!/bin/bash
set -e
# Description: List Debian packages with its version number.
#     Return values can be feed to packages.list

VERSION="$1"

# Error handling.

# Main
if [ -z "${VERSION}"]; then
  dpkg-query -W -f='${binary:Package} (=${Version})\n'
elif [ "${VERSION}" = "no-version" ]; then
  dpkg-query -W -f='${binary:Package}\n'  
else
  echo "Error: Invalid argument!"
  echo "   e.g.: $0 [,no-version]"
fi
