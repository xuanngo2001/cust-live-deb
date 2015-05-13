export GV_LOG="CLDS:" 
LOG="CLDS:" 
INSTALL_LOG=/root/scripts/install.log

chmod +x  *.sh

# Execute base scripts
sh install-00-00.sh 2>&1 | tee -a ${INSTALL_LOG}

# Execute script with install-<letter>*.sh
for scriptfile in $( ls install-[aA-zZ]*.sh ); do
  sh ${scriptfile} 2>&1 | tee -a ${INSTALL_LOG}
done

grep "${LOG}" ${INSTALL_LOG} > "${INSTALL_LOG##*/}.ran"
