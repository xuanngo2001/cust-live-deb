#!/bin/bash
set -e
# Description: Get all package names from inst-*.sh scripts. Note: it is not definitive.

PACKAGE_LIST_FILE=./packages.list
echo "# These are potential list of packages needed." > "${PACKAGE_LIST_FILE}"
while IFS='' read -r SCRIPT_FILE || [[ -n "$SCRIPT_FILE" ]]; do
  
  # Add script name.
  echo "# ${SCRIPT_FILE}" >> "${PACKAGE_LIST_FILE}"
  
  # Extract package names of apt-get command from script file. 
  APT_GET_PACKAGES=$(grep '.*apt-get.*install' "${SCRIPT_FILE}" || true) # If apt-get not found, still return true to prevent exiting this script.
  APT_GET_PACKAGES=$(echo "${APT_GET_PACKAGES}" | grep -v '^#' || true) # Remove if it is commented out.
  APT_GET_PACKAGES=$(echo "${APT_GET_PACKAGES}" | sed 's/.* install //' | tr ' ' '\n' || true) # Replace space with newline.
  APT_GET_PACKAGES=$(echo "${APT_GET_PACKAGES}" | grep -v '^-' || true)  # Remove option(-XX)
  APT_GET_PACKAGES=$(echo "${APT_GET_PACKAGES}" | awk NF || true)  # Remove empty line.
  APT_GET_PACKAGES=$(echo "${APT_GET_PACKAGES}" | grep -Fv '${KERNEL_HEADER}' || true)  # Remove line with '${KERNEL_HEADER}'.
  echo "${APT_GET_PACKAGES}" >> "${PACKAGE_LIST_FILE}"

done < <( find ./inst-* -type f -name "inst-*.sh" | sort )


