#!/bin/bash
set -e
# Description: Create script repositories.

SCRIPT_REPO_LIST=$1
SCRIPT_REPO_LIST=create-script-repo.txt

# Error handling
  if [ ! -f "${SCRIPT_REPO_LIST}" ]; then echo "Error: Script repository list: ${SCRIPT_REPO_LIST}: no such file. Aborted!"; exit 1; fi;

SCRIPT_REPO_LIST=$(readlink -ev "${SCRIPT_REPO_LIST}")



while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
  
  DIR_PREFIX=$(echo "${LINE}" | cut -f1)
  PKG_NAME=$(echo "${LINE}" | cut -f2)

  PKG_DIR="${DIR_PREFIX}-${PKG_NAME}"
  
  if [ -d "${PKG_DIR}" ]; then
    echo "$0: Warning: ${PKG_DIR} already existed. Processing stop!"
  else
  
	  # Create script repository directory.
	  mkdir "${PKG_DIR}"
	  
	  # Create script.
	  cat create-script-repo-template.sh > "${PKG_DIR}/${PKG_DIR}.sh"
	  sed -i "s/PKG_NAME/${PKG_NAME}" "${PKG_DIR}/${PKG_DIR}.sh"
  
  fi    
                                # Ignore comment line | Remove empty line
done < <( cat "${SCRIPT_REPO_LIST}" | grep -v '^#' | awk NF )

