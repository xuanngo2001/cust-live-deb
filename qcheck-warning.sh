#!/bin/bash
# Description: Check warnings in log file.

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

# Get all warnings.
  if grep -iE 'Warning:' "${main_log}" > /dev/null
  then
    echo "Warnings in log file: ${main_log}"
    warnings=$(grep -iE 'Warning:' ${main_log} | sed 's/^/  /')
    warnings=$(echo "${warnings}" | grep -vF 'setlocale:')
    warnings=$(echo "${warnings}" | grep -v ' perl: .* locale')
    warnings=$(echo "${warnings}" | awk '!seen[$0]++' ) # Remove duplicate without sorting.
    
    echo "${warnings}"
  else
    echo "No warning in log file: ${main_log}"
  fi

# Add newline as a separation.
  echo ""  
  
  
  