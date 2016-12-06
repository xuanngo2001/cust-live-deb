#!/bin/bash
set -e
# Description: List Debian packages with its version number.
#     Return values can be feed to packages.list

VERSION="$1"

# Convert input to lowercase: Make option value case insensitive.
VERSION=$(echo "${VERSION}" | tr '[[:upper:]]' '[[:lower:]]')

if [ -z "${VERSION}" ]; then
  dpkg-query -W -f='${binary:Package} (=${Version})\n'
elif [ "${VERSION}" = "no-version" ]; then
  dpkg-query -W -f='${binary:Package}\n'  
else
  echo "Error: ${VERSION}: Invalid argument!"
  echo "   e.g.: $0 [,no-version]"
fi
