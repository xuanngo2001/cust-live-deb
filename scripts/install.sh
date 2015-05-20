#!/bin/bash

###################### ERROR Handling
COMPONENT=$1

if [ -z "${COMPONENT}" ]; then
  echo "ERROR: Argument missing:"
  echo "./install.sh  min"
  echo "   or"
  echo "./install.sh  all"
  exit 0
fi

if [ "${COMPONENT}" = "min" ]; then
  COMPONENT="min-*"
else
  COMPONENT="*"
fi

######################

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
echo "${TOTAL_SIZE}" 2>&1 | tee -a ${INSTALL_LOG}
echo "${SCRIPT_NAME}: ${DATE_STRING}: ${TOTAL_SIZE}" > ${INSTALL_LOG_SIZE}

###################### Main
# Run scripts as per COMPONENT selected.
CLEAN_SCRIPTNAME_PREFIX="inst-zclean-"
for scriptfile in $( ls inst-${COMPONENT}.sh | grep -v "${CLEAN_SCRIPTNAME_PREFIX}" ); do
  ./${scriptfile} 2>&1 | tee -a ${INSTALL_LOG}
  # Log total size at the end of script.
  total_size_tmp=$(GF_LOG_TOTAL_SIZE)
  echo "${total_size_tmp}" 2>&1 | tee -a ${INSTALL_LOG}
  echo "${scriptfile}: ${DATE_STRING}: ${total_size_tmp}" >> ${INSTALL_LOG_SIZE}
done

# Run clean up scripts.
for scriptfile in $( ls ${CLEAN_SCRIPTNAME_PREFIX}*.sh ); do
  ./${scriptfile} 2>&1 | tee -a ${INSTALL_LOG}
  # Log total size at the end of script.
  total_size_tmp=$(GF_LOG_TOTAL_SIZE)
  echo "${total_size_tmp}" 2>&1 | tee -a ${INSTALL_LOG}
  echo "${scriptfile}: ${DATE_STRING}: ${total_size_tmp}" >> ${INSTALL_LOG_SIZE}
done

# Retrieved the log.
sed "s/After this operation, /${GV_LOG} * After this operation, /" ${INSTALL_LOG} |\
  grep "${GV_LOG}" > "${INSTALL_LOG%.*}.ran"
