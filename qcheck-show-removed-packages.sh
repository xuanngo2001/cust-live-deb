#!/bin/bash
# Description: Display removed Debian packages.

MAIN_LOG=/media/master/github/cust-live-deb/logs/main.log

  REMOVED_PACKAGES_MARKER="The following packages will be REMOVED:"
  PKG_REMOVED=$(cat "${MAIN_LOG}" | sed -n "/${REMOVED_PACKAGES_MARKER}/,/^[^ *]/p" | grep '^  ') # Get package list.
echo "${PKG_REMOVED}"