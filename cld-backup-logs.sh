#!/bin/bash
set -e
# Description: Backup logs generated.

LOG_DIR=$1
BASE_SCRIPT_DIR=$2
BASE_SCRIPT_DIR=./scripts

# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;
  if [ ! -d "${BASE_SCRIPT_DIR}" ]; then echo "Error: Destination directory: ${BASE_SCRIPT_DIR}: no such directory. Aborted!"; exit 1; fi;

LOG_DIR=$(readlink -ev "${LOG_DIR}")
BASE_SCRIPT_DIR=$(readlink -ev "${BASE_SCRIPT_DIR}")

REPO_DIR="${BASE_SCRIPT_DIR}/repository"
REPO_DIR=$(readlink -ev "${REPO_DIR}")

# Processing log of scripts.
while IFS='' read -r LOG_FILE || [[ -n "$LOG_FILE" ]]; do
echo $LOG_FILE
  SCRIPT_DIR_NAME=$(basename "${LOG_FILE}" | sed 's/.sh.log.md//' | sed 's/.sh.log//' )
  SCRIPT_DIR="${REPO_DIR}/${SCRIPT_DIR_NAME}"
  if [ -d "${SCRIPT_DIR}" ]; then
    SCRIPT_DIR=$(readlink -ev "${SCRIPT_DIR}")
    
    LOG_FILENAME=$(basename "${LOG_FILE}")
    if [ -f "${SCRIPT_DIR}/${LOG_FILENAME}" ]; then
      
      if ! cmp "${LOG_FILE}" "${SCRIPT_DIR}/${LOG_FILENAME}"; then
        yes | cp -a "${LOG_FILE}" "${SCRIPT_DIR}"
      fi
      
    else
      cp -a "${LOG_FILE}" "${SCRIPT_DIR}"
    fi
    
    
  else
    echo "$0: Error: ${SCRIPT_DIR}: no such directory!"
    
  fi
 
done < <( find "${LOG_DIR}" -type f -name "inst-*.sh*" )

# Processing install.log
# Processing dpkg.log