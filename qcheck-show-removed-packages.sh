#!/bin/bash
# Description: Display removed Debian packages.

MAIN_LOG=/media/master/github/cust-live-deb/logs/main.log

  REMOVED_PACKAGES_MARKER="The following packages will be REMOVED:"
  PKG_REMOVED=$(cat "${MAIN_LOG}" | sed -n "/${REMOVED_PACKAGES_MARKER}/,/^[^ *]/p" | grep '^  ')
  PKG_REMOVED=$(echo "${PKG_REMOVED}" | tr ' ' '\n')  # 1 package per line.
  PKG_REMOVED=$(echo "${PKG_REMOVED}" | awk NF)       # Remove empty line.
  PKG_REMOVED=$(echo "${PKG_REMOVED}" | sed 's/^/   /') # Indent results.

  # Add newline as a separation.
  echo ""
  
  if [ $(echo "${PKG_REMOVED}"| tr -d ' '| wc -w) -gt 0 ]; then
    echo "${REMOVED_PACKAGES_MARKER}"
    echo "${PKG_REMOVED}"
  else
    echo "No package has been removed!"
  fi
  
  # Add newline as a separation.
  echo ""  