#!/bin/bash
# Description: Display removed Debian packages.

main_log=$1

# Use default main.log file.
  if [ -z "${main_log}" ]; then
    main_log=/media/master/github/cust-live-deb/logs/main.log
  fi

# Error handling.
  if [ ! -f "${main_log}" ]; then
    echo "Error: ${main_log} is not a file. Aborted!"
    exit 1;
  fi

# Add newline as a separation.
  echo ""

# Get packages that have been removed.  
  removed_packages_marker="The following packages will be REMOVED:"
  pkg_removed=$(cat "${main_log}" | sed -n "/${removed_packages_marker}/,/^[^ *]/p" | grep '^  ')
  pkg_removed=$(echo "${pkg_removed}" | tr ' ' '\n')  # 1 package per line.
  pkg_removed=$(echo "${pkg_removed}" | awk NF)       # Remove empty line.
  pkg_removed=$(echo "${pkg_removed}" | sed 's/^/   /') # Indent results.  
  if [ $(echo "${pkg_removed}"| tr -d ' '| wc -w) -gt 0 ]; then
    echo "${removed_packages_marker}"
    echo "${pkg_removed}"
  else
    echo "No package has been removed!"
  fi
  
# Add newline as a separation.
  echo ""  
  
  
  