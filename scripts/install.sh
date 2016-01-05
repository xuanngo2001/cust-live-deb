#!/bin/bash
set -e

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"

# Ensure *.sh are executable.
	chmod +x *.sh
	chmod +x ./repository/*.sh


# Load global variables and functions.
	. ./load-global-vars-funcs.sh

# Create log directory.
	LOG_DIR=logs
	mkdir -p "${LOG_DIR}"
	LOG_DIR=$(readlink -ev "${LOG_DIR}")

# Define variables. 
	DATE_STRING=$(date +"%Y-%m-%d_%0k.%M.%S")
	INSTALL_LOG="${LOG_DIR}/install.log"
	INSTALL_LOG_SIZE="${LOG_DIR}/install.size"

# Log default size.
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."         2>&1 | tee -a "${INSTALL_LOG}" "${LOG_DIR}/${SCRIPT_NAME}.log"
echo "${GV_LOG} * Running on SHELL=$SHELL VER=$BASH_VERSION" 2>&1 | tee -a "${INSTALL_LOG}" "${LOG_DIR}/${SCRIPT_NAME}.log"
TOTAL_SIZE=$(GF_LOG_TOTAL_SIZE)
echo "${TOTAL_SIZE}" 2>&1 | tee -a "${INSTALL_LOG}" "${LOG_DIR}/${SCRIPT_NAME}.log"
echo "${SCRIPT_NAME}: ${DATE_STRING}: ${TOTAL_SIZE}" > ${INSTALL_LOG_SIZE}

###################### Main
INITIAL_DIR=$(pwd)
# Run scripts.
for SCRIPT_PATH in $( cat scripts-ls.lst ); do
  PACKAGE_DIR=$(dirname "${SCRIPT_PATH}")
  cd "${PACKAGE_DIR}"   # Go to the directory where the script resides.
  
  chmod +x ${SCRIPT_PATH}
  EXE_SCRIPT_NAME=$(basename "${SCRIPT_PATH}")
  ${SCRIPT_PATH} 2>&1 | tee -a "${INSTALL_LOG}" "${LOG_DIR}/${EXE_SCRIPT_NAME}.log"
  # Log total size at the end of script.
  total_size_tmp=$(GF_LOG_TOTAL_SIZE)
  echo "${total_size_tmp}" 2>&1 | tee -a "${INSTALL_LOG}" "${LOG_DIR}/${EXE_SCRIPT_NAME}.log"
  echo "${SCRIPT_PATH}: ${DATE_STRING}: ${total_size_tmp}" >> ${INSTALL_LOG_SIZE}
  
  cd "${INITIAL_DIR}" # Back to initial directory.
done

# Retrieved the log.
sed "s/After this operation, /${GV_LOG} * After this operation, /" ${INSTALL_LOG} |\
  grep "${GV_LOG}" > "${INSTALL_LOG%.*}.ran"
