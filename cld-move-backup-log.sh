#!/bin/bash
set -e
# Description: Move backup log files to its own directory.

LOG_DIR=$1

# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;

LOG_DIR=$(readlink -ev "${LOG_DIR}")

BASE_SCRIPT_DIR=./scripts
BASE_SCRIPT_DIR=$(readlink -ev "${BASE_SCRIPT_DIR}")

REPO_DIR="${BASE_SCRIPT_DIR}/repository"
REPO_DIR=$(readlink -ev "${REPO_DIR}")

# Processing log of scripts.
while IFS='' read -r LOG_FILE || [[ -n "$LOG_FILE" ]]; do

  SCRIPT_DIR_NAME=$(basename "${LOG_FILE}" | sed 's/.sh.log.md//' | sed 's/.sh.log//' )
  SCRIPT_DIR="${REPO_DIR}/${SCRIPT_DIR_NAME}"
  if [ -d "${SCRIPT_DIR}" ]; then
    SCRIPT_DIR=$(readlink -ev "${SCRIPT_DIR}")
    
    LOG_FILENAME=$(basename "${LOG_FILE}")
    if [ -f "${SCRIPT_DIR}/${LOG_FILENAME}" ]; then
      
      if ! cmp "${LOG_FILE}" "${SCRIPT_DIR}/${LOG_FILENAME}" >/dev/null 2>&1; then
        yes | mv "${LOG_FILE}" "${SCRIPT_DIR}"
      fi
      
    else
      mv "${LOG_FILE}" "${SCRIPT_DIR}"
    fi
    
    
  else
    echo "$0: Error: ${SCRIPT_DIR}: no such directory!"
    
  fi
 
done < <( find "${LOG_DIR}" -type f -name "inst-*.sh*" )

# Processing install.log
# Processing dpkg.log

