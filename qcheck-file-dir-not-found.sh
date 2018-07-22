#!/bin/bash
# Description: Check error in log file.

main_log=$1

# Use default main.log file.
  if [ -z "${main_log}" ]; then
    main_log=/media/master/github/cust-live-deb/logs/main.log
  fi

# Error handling.
  if [ ! -f "${main_log}" ]; then
    echo "Error: ${main_log} is not a file. Aborted!"
    exit 1;
  fi


# Add newline as a separation.
  echo ""

# Get 'No such file or directory'.
  grep_pattern='No such file or directory'
  if grep -F "${grep_pattern}" "${main_log}" > /dev/null
  then
    echo "File or directory not found in log file: ${main_log}"
    file_dir_not_found=$(grep -F "${grep_pattern}" ${main_log} | sed 's/^/  /')
    file_dir_not_found=$(echo "${file_dir_not_found}" | awk '!seen[$0]++' ) # Remove duplicate without sorting.

    echo "${file_dir_not_found}"
    
  else
      echo "No error in log file: ${main_log}"
  fi

# Add newline as a separation.
  echo ""  
  
  
  