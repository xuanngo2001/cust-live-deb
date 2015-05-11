chmod +x  *.sh

# Execute base scripts
sh install-00-00.sh 2>&1 | tee -a install.log

# Execute script with install-<letter>*.sh
for scriptfile in $( ls install-[aA-zZ]*.sh ); do
  echo ">>>>>>>>> Running ${scriptfile}..."
sh ${scriptfile} 2>&1 | tee -a install.log
done