#!/bin/bash
set -e
# Description: Copy from SOURCE/ to DESTINATION/ and delete extraneous files from the receiving side.
# Usage: this_script.sh <ACTION> <SOURCE_DIR> <DESTINATION_DIR> [EXCLUDE_LIST]
#   [EXCLUDE_LIST] is optional.
# Output: When commit, log file created at ./deploy_logs/deploy_2016-02-16_15.13.35.log.

ACTION=$1
SOURCE_DIR=$2
DEST_DIR=$3
EXCLUDE_LIST=$4

EXCLUDE_FROM_OPTION=""

# Error handling
  CMD_EXAMPLES=$(printf " %s\n %s\n %s\n" \
                        " e.g. $0 <ACTION> <SOURCE_DIR> <DESTINATION_DIR> [EXCLUDE_LIST]"\
                        " e.g. $0 try /some/source/ /some/destination/"\
                        " e.g. $0 commit /some/source/ /some/destination/ exclude.txt"\
                )
	if [ -z "${ACTION}" ]; then
	  echo "$0: Error: Action can't be empty. Aborted!"
	  echo "${CMD_EXAMPLES}"
	  exit 1;
	fi
	
	if [ ! -d "${SOURCE_DIR}" ]; then
	  echo "$0: Error: Source directory: ${SOURCE_DIR}: no such directory. Aborted!"
	  echo "${CMD_EXAMPLES}"
	  exit 1;
	fi
	
	if [ ! -d "${DEST_DIR}" ]; then
	  echo "$0: Error: Destination directory: ${DEST_DIR}: no such directory. Aborted!"
	  echo "${CMD_EXAMPLES}"
	  exit 1;
	fi
	
	if [ ! -z "${EXCLUDE_LIST}" ]; then
		if [ ! -f "${EXCLUDE_LIST}" ]; then
		  echo "$0: Error: Exclude list file: ${EXCLUDE_LIST}: no such file. Aborted!"
		  echo "${CMD_EXAMPLES}"
		  exit 1;
		else
		  # Construct exclude option.
		  EXCLUDE_FROM_OPTION="--exclude-from=${EXCLUDE_LIST}"	
		  EXCLUDE_LIST=$(readlink -ev "${EXCLUDE_LIST}")
	  fi
	fi
	
	SOURCE_DIR=$(readlink -ev "${SOURCE_DIR}")
	DEST_DIR=$(readlink -ev "${DEST_DIR}")


# Create deploy log directory.
DEPLOY_LOG_DIR="./deploy_logs"
mkdir -p "${DEPLOY_LOG_DIR}"
DEPLOY_LOG_DIR=$(readlink -ev "${DEPLOY_LOG_DIR}")

# Deploy
DATE_STRING=$(date +"%Y-%m-%d_%0k.%M.%S")
case "${ACTION}" in
  
  commit)
    # Really commit deployment. 
    rsync -a --checksum --delete-after --progress --itemize-changes --stats --out-format='%i %n %M %l' "${EXCLUDE_FROM_OPTION}" "${SOURCE_DIR}/" "${DEST_DIR}/" > "${DEPLOY_LOG_DIR}/deploy_${DATE_STRING}.log"
    echo "Deployment log created at ${DEPLOY_LOG_DIR}/deploy_${DATE_STRING}.log."
    ;;
    
  try)
    rsync -a --checksum --delete-after --progress --itemize-changes --stats --out-format='%i %n %M %l' --dry-run "${EXCLUDE_FROM_OPTION}" "${SOURCE_DIR}/" "${DEST_DIR}/"
    ;;
    
  *)
    echo "Error: Unknown action: ${ACTION}. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1
    ;;    
esac

