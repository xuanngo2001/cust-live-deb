#!/bin/bash
set -e
# Description: Backup chroot logs generated.
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


LOG_DIR=$1
DEST_DIR=$2

# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;
  if [ ! -d "${DEST_DIR}" ]; then echo "Error: Destination directory: ${DEST_DIR}: no such directory. Aborted!"; exit 1; fi;

LOG_DIR=$(readlink -ev "${LOG_DIR}")
DEST_DIR=$(readlink -ev "${DEST_DIR}")

yes | cp -R "${LOG_DIR}" "${DEST_DIR}"

echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"