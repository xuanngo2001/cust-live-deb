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

  if grep -E '^E:|ERROR:' "${main_log}" > /dev/null
  then
    echo "Error in log file: ${main_log}"
    grep -E '^E:|ERROR:' ${main_log} | sed 's/^/  /'
  
  else
      echo "No error in log file: ${main_log}"
  fi

# Add newline as a separation.
  echo ""  