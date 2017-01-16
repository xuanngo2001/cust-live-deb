#!/bin/bash
set -e
# Description: Copy specific list of files from SOURCE/ to DESTINATION/.
# Usage: this_script.sh <ACTION> <SOURCE_DIR> <DESTINATION_DIR> [FILE_LIST]
#   [FILE_LIST] is optional.

ACTION=$(echo "$1" | tr '[:upper:]'  '[:lower:]')
SOURCE_DIR=$2
DEST_DIR=$3
FILE_LIST=$4

FILES_FROM_OPTION=""
SCRIPT_NAME=$(basename "$0")

# Error handling
  CMD_EXAMPLES=$(printf " %s\n %s\n %s\n" \
                        " e.g. $0 <ACTION> <SOURCE_DIR> <DESTINATION_DIR> [FILE_LIST]"\
                        " e.g. $0 try    /some/source/ /some/destination/"\
                        " e.g. $0 commit /some/source/ /some/destination/ specific-files-to-copy.txt"\
                )
	if [ $# -lt 3 ]; then
	  echo "${SCRIPT_NAME}: Error: The first 3 arguments are required. Aborted!"
	  echo "${CMD_EXAMPLES}"
	  exit 1;
	fi
	
	if [ ! -d "${SOURCE_DIR}" ]; then
	  echo "${SCRIPT_NAME}: Error: Source directory: ${SOURCE_DIR}: no such directory. Aborted!"
	  echo "${CMD_EXAMPLES}"
	  exit 1;
	fi
	
	if [ ! -d "${DEST_DIR}" ]; then
	  echo "${SCRIPT_NAME}: Error: Destination directory: ${DEST_DIR}: no such directory. Aborted!"
	  echo "${CMD_EXAMPLES}"
	  exit 1;
	fi
	
	if [ ! -z "${FILE_LIST}" ]; then
		if [ ! -e "${FILE_LIST}" ]; then
		  echo "${SCRIPT_NAME}: Error: Specific files list to copy: ${FILE_LIST}: no such file. Aborted!"
		  echo "${CMD_EXAMPLES}"
		  exit 1;
		else
		  # Construct include option.
		  if [ -f "${FILE_LIST}" ]; then
		    FILE_LIST=$(readlink -ev "${FILE_LIST}")
		  fi
		  FILES_FROM_OPTION="--files-from=${FILE_LIST}"	
	  fi
	fi
	
	SOURCE_DIR=$(readlink -ev "${SOURCE_DIR}")
	DEST_DIR=$(readlink -ev "${DEST_DIR}")


# Rsync
case "${ACTION}" in
  
  commit)
    # Really commit. 
    rsync -a --checksum --progress --itemize-changes --stats --out-format='%i %n %M %l' "${FILES_FROM_OPTION}" "${SOURCE_DIR}/" "${DEST_DIR}/"
    ;;

  try)
    rsync -a --checksum --progress --itemize-changes --stats --out-format='%i %n %M %l' --dry-run "${FILES_FROM_OPTION}" "${SOURCE_DIR}/" "${DEST_DIR}/"
    ;;
    
  *)
    echo "${SCRIPT_NAME}: Error: Unknown action: ${ACTION}. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1
    ;;    
esac

