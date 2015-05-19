#!/bin/bash
SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"

# Ensure *.sh are executable.
chmod +x *.sh

# Load global variables and functions.
. ./load-global-vars-funcs.sh

DATE_STRING=$(date +"%Y-%m-%d_%0k.%M.%S")
INSTALL_LOG=/root/scripts/install.log
INSTALL_LOG_SIZE=/root/scripts/install.size

# Log default size.
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..." 2>&1 | tee -a ${INSTALL_LOG}
echo "${GV_LOG} * Running on SHELL=$SHELL VER=$BASH_VERSION" 2>&1 | tee -a ${INSTALL_LOG}
TOTAL_SIZE=$(GF_LOG_TOTAL_SIZE)
echo ${TOTAL_SIZE} 2>&1 | tee -a ${INSTALL_LOG}
echo "${SCRIPT_NAME}: ${DATE_STRING}: ${TOTAL_SIZE}" > ${INSTALL_LOG_SIZE}

# Execute script with install-<letter>*.sh
for scriptfile in $( ls inst-*.sh ); do
  ./${scriptfile} 2>&1 | tee -a ${INSTALL_LOG}
  # Log total size at the end of script.
  TOTAL_SIZE_TMP=$(GF_LOG_TOTAL_SIZE)
  echo ${TOTAL_SIZE_TMP} 2>&1 | tee -a ${INSTALL_LOG}
  echo "${SCRIPT_NAME}: ${DATE_STRING}: ${TOTAL_SIZE_TMP}" >> ${INSTALL_LOG_SIZE}
done

# Retried the log.
grep "${GV_LOG}" ${INSTALL_LOG} > "${INSTALL_LOG%.*}.ran"
