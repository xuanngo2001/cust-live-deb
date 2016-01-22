#!/bin/bash
set -e
set -o pipefail
# Description: Get all package names from inst-*.sh scripts. Note: it is not definitive.

PACKAGE_LIST_FILE=./packages.list
echo "# These are potential list of packages needed." > "${PACKAGE_LIST_FILE}"
while IFS='' read -r SCRIPT_FILE || [[ -n "$SCRIPT_FILE" ]]; do
  
  # Add script name.
  echo "# ${SCRIPT_FILE}" >> "${PACKAGE_LIST_FILE}"
  
  # Extract package names from apt-get
  APT_GET_PACKAGES=$(grep '^apt-get .* install ' "${SCRIPT_FILE}" || true) # If apt-get not found, still return true to prevent exiting this script.
  APT_GET_PACKAGES=$(echo "${APT_GET_PACKAGES}" | sed 's/.* install //' | tr ' ' '\n' )
  echo "${APT_GET_PACKAGES}" >> "${PACKAGE_LIST_FILE}"
 
done < <( find ./inst-* -type f -name "inst-*.sh" | sort )


