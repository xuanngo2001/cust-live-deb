#!/bin/bash
set -e
# Description: Move backup log files to its own directory.

function F_MAIN()
{
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
	
	  SCRIPT_DIR_NAME=$(basename "${LOG_FILE}" | sed 's/\.sh\..*//')
	  SCRIPT_DIR="${REPO_DIR}/${SCRIPT_DIR_NAME}"
	  if [ -d "${SCRIPT_DIR}" ]; then
	    SCRIPT_DIR=$(readlink -ev "${SCRIPT_DIR}")
	    
	    F_OVERWRITE_IF_DIFF "${LOG_FILE}" "${SCRIPT_DIR}"
	    
	  else
	    echo "$0: Error: ${SCRIPT_DIR}: no such directory!"
	    
	  fi
	 
	done < <( find "${LOG_DIR}" -type f -name "inst-*.sh*" )
	
}

# Copy file to destination directory.
#  If file already existed and have different content, then overwrite it.
function F_OVERWRITE_IF_DIFF()
{
  local FILE_PATH=$1
  local DEST_DIR=$2
  
  # Error handling
  if [ ! -f "${FILE_PATH}" ]; then echo "Error: Input file: ${FILE_PATH}: no such file. Aborted!"; exit 1; fi;
  if [ ! -d "${DEST_DIR}" ]; then echo "Error: Destination directory: ${DEST_DIR}: no such directory. Aborted!"; exit 1; fi;
  
  FILE_PATH=$(readlink -ev "${FILE_PATH}")
  DEST_DIR=$(readlink -ev "${DEST_DIR}")
  
  local FILENAME=$(basename "${FILE_PATH}")
  if [ -f "${DEST_DIR}/${FILENAME}" ]; then
    
    if ! cmp "${FILE_PATH}" "${DEST_DIR}/${FILENAME}" >/dev/null 2>&1; then
      yes | mv "${FILE_PATH}" "${DEST_DIR}"
    else
      rm -f "${FILE_PATH}"
    fi
    
  else
    mv "${FILE_PATH}" "${DEST_DIR}"
  fi
}
export -f F_OVERWRITE_IF_DIFF

F_MAIN "$@"