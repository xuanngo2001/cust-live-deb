#!/bin/bash

# Ensure *.sh are executable.
chmod +x *.sh

# Load global variables and functions.
. ./load-global-vars-funcs.sh

INSTALL_LOG=/root/scripts/install.log

# Execute base scripts
sh install-00-00.sh 2>&1 | tee -a ${INSTALL_LOG}

# Execute script with install-<letter>*.sh
for scriptfile in $( ls install-[aA-zZ]*.sh ); do
  sh ${scriptfile} 2>&1 | tee -a ${INSTALL_LOG}
  # Log total size at the end of script.
  GF_LOG_TOTAL_SIZE 2>&1 | tee -a ${INSTALL_LOG}
done

grep "${GV_LOG}" ${INSTALL_LOG} > "${INSTALL_LOG%.*}.ran"
