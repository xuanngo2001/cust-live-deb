chmod +x  *.sh

# Execute base scripts
sh install-00-00.sh

# Execute script with install-<letter>*.sh
for scriptfile in $( ls install-[aA-zZ]*.sh ); do
  echo "Running ${scriptfile}..."
  sh ${scriptfile} 2>&1 | tee install.log
done