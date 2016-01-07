#!/bin/bash
# Description: Log packages sizes

LOG_DIR=$1

# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;

LOG_DIR=$(readlink -ev "${LOG_DIR}")

# Log install script sizes.
INSTALL_SIZE_HISTORY=install-size-history.txt
cat "${LOG_DIR}/install.size" >> ${INSTALL_SIZE_HISTORY}
echo "${INSTALL_SIZE_HISTORY} updated."
