#!/bin/bash
set -e
# Description: Get packages installed from *.sh.log
#   Note: Already installed package will end with *.
script_name=$(basename "$0")

log_file=$1

# Error handling.
  if [ ! -f "${log_file}" ]; then
    echo "Error: ${script_name}: ${log_file} is no a file. Aborted!"
    echo "   e.g.: ${script_name} inst-std-multimedia-mpv.sh.log "
    exit 1
  fi
  
  log_file=$(readlink -ev "${log_file}")
  
# Extract package list.
  log_content=$(cat "${log_file}")

  pkg_new_marker="The following NEW packages will be installed:"
  pkg_new_list=$(echo "${log_content}" | sed -n "/${pkg_new_marker}/,/^[^ *]/p" | grep '^  ' || true) # Get package list.
  pkg_new_list=$(echo "${pkg_new_list}" | xargs | tr ' ' '\n' | sort | uniq ) # Clean up.
  
  pkg_installed_marker=' is already the newest version '
  pkg_installed_list=$(echo "${log_content}" | grep -F "${pkg_installed_marker}" | sed "s/${pkg_installed_marker}.*//" || true) # Get package list.
  pkg_installed_list=$(echo "${pkg_installed_list}" | xargs | tr ' ' '\n' | sort | uniq ) # 1 per line.
    if [ ! -z "${pkg_installed_list}" ]; then
      pkg_installed_list=$(echo "${pkg_installed_list}" | sed 's/$/*/' ) # End with *.
    fi
    
  package_needed="${pkg_new_list} ${pkg_installed_list}"
  package_needed=$(echo "${package_needed}" | xargs | tr ' ' '\n' | sort | uniq | mawk NF) # 1 per line.

echo "${package_needed}"

# Package selection rejected pattern: Use mpv & libreoffice log to test.
#   ^Get: (Virtual package not listed)
#   Selecting previously unselected package. (Virtual package not listed)
#   The following additional packages will be installed: (Missing dependent packages)

# cat inst-std-multimedia-mpv.sh.log.deb.txt | xargs | tr ' ' '\n' | sort | uniq > zdeb.log
# log-pkg-installed.sh inst-std-multimedia-mpv.sh.log > zdeb.log2

# 
# log-pkg-installed.sh inst-std-multimedia-00-debmultimedia-keyring.sh.log > zdeb.log2