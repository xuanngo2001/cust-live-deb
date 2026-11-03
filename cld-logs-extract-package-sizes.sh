#!/bin/bash
# Description: Log packages sizes
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


LOG_DIR=$1

# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;

LOG_DIR=$(readlink -ev "${LOG_DIR}")

# Log install script sizes.
INSTALL_SIZE_HISTORY=install-size-history.txt
cat "${LOG_DIR}/main.size" >> ${INSTALL_SIZE_HISTORY}
echo "${INSTALL_SIZE_HISTORY} updated."


echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"