#!/bin/bash
set -e
# Description: List Debian packages with its version number.
# Output: Return values can be feed to packages.list

ACTION=$1
ACTION=$(echo "${ACTION}" | tr '[[:upper:]]' '[[:lower:]]')

case "${ACTION}" in
  "")
    dpkg-query -W -f='${binary:Package} (=${Version})\n'
    ;;
  no-version)
    dpkg-query -W -f='${binary:Package}\n'
    ;;
  *)
	  echo "Error: ${VERSION}: Invalid argument!"
	  echo "   e.g.: $0 [,no-version]"
	  exit 1;
    ;;    
esac
