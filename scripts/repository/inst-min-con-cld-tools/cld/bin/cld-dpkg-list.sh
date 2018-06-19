#!/bin/bash
set -e
# Description: List Debian packages with its version number.
#               Used in .../cust-live-deb/scripts/main.sh
# Output: Return values can be feed to packages.list
#  Note: from ../inst-min-con-cld-tools/cld/bin

ACTION=$1
ACTION=$(echo "${ACTION}" | tr '[[:upper:]]' '[[:lower:]]')

case "${ACTION}" in
  "")
    dpkg-query -W -f='${Package}|${Version}\n'
    ;;
  no-version)
    dpkg-query -W -f='${Package}\n'
    ;;
  *)
	  echo "Error: ${VERSION}: Invalid argument!"
	  echo "   e.g.: $0 [,no-version]"
	  exit 1;
    ;;    
esac
