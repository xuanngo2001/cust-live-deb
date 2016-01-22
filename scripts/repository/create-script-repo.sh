#!/bin/bash
set -e
set -o pipefail
# Description: Create script repositories.

SCRIPT_REPO_LIST=$1
SCRIPT_REPO_LIST=create-script-repo.txt

# Error handling
  if [ ! -f "${SCRIPT_REPO_LIST}" ]; then echo "Error: Script repository list: ${SCRIPT_REPO_LIST}: no such file. Aborted!"; exit 1; fi;

SCRIPT_REPO_LIST=$(readlink -ev "${SCRIPT_REPO_LIST}")



while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
  
  DIR_PREFIX=$(echo "${LINE}" | cut -d' ' -f1 | tr -d '[:space:]')
  PKG_NAME=$(echo "${LINE}"   | cut -d' ' -f2 | tr -d '[:space:]')

  PKG_DIR="${DIR_PREFIX}-${PKG_NAME}"

  if [ -d "${PKG_DIR}" ]; then
    echo "$0: Warning: ${PKG_DIR} already existed. Processing stop!"
  else
  
	  # Create script repository directory.
	  mkdir "${PKG_DIR}"
	  
	  # Create script.
	  cat create-script-repo-template.sh > "${PKG_DIR}/${PKG_DIR}.sh"
	  sed -i "s/PKG_NAME/${PKG_NAME}/" "${PKG_DIR}/${PKG_DIR}.sh"
    
    # Display actions.
    echo "$0: ${PKG_DIR}/${PKG_DIR}.sh created."
  fi    
                                # Ignore comment line | Remove empty line
done < <( cat "${SCRIPT_REPO_LIST}" | grep -v '^#' | awk NF )

