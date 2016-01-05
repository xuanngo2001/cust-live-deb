#!/bin/bash
# Description: Backup logs generated.

LOG_DIR=$1
DEST_DIR=$2

# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;
  if [ ! -d "${DEST_DIR}" ]; then echo "Error: Destination directory: ${DEST_DIR}: no such directory. Aborted!"; exit 1; fi;

LOG_DIR=$(readlink -ev "${LOG_DIR}")
DEST_DIR=$(readlink -ev "${DEST_DIR}")

yes | cp -R "${LOG_DIR}" "${DEST_DIR}"