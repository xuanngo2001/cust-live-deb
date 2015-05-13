#!/bin/bash
#########################################################
# All export variables and functions

# Prefix this variable in echo to log echoed string. CLDS stands for Custom Live Debian System.
export GV_LOG="CLDS:"


# Log total size
GF_LOG_TOTAL_SIZE ()
{
  echo "${GV_LOG} * Total size = $(du -s --exclude=/proc / | head -n 1 | cut -f1)"
}

export -f GF_LOG_TOTAL_SIZE

# NOTE: Exporting a variable doesn't make it available to parent processes.
# Reference: http://stackoverflow.com/a/1158231
#########################################################


INSTALL_LOG=/root/scripts/install.log

chmod +x *.sh

# Execute base scripts
sh install-00-00.sh 2>&1 | tee -a ${INSTALL_LOG}

# Execute script with install-<letter>*.sh
for scriptfile in $( ls install-[aA-zZ]*.sh ); do
  sh ${scriptfile} 2>&1 | tee -a ${INSTALL_LOG}
  # Log total size at the end of script.
  GF_LOG_TOTAL_SIZE 2>&1 | tee -a ${INSTALL_LOG}
done

grep "${GV_LOG}" ${INSTALL_LOG} > "${INSTALL_LOG##*/}.ran"
