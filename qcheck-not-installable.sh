#!/bin/bash
# Description: Check "not installable" in log file.

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
  if grep -iE 'not installable' "${main_log}" > /dev/null
  then
    echo "'not installable' in log file: ${main_log}"
    content=$(grep -iE 'not installable' "${main_log}" | sed 's/^/  /')
    echo "${content}"

  else
    echo "No 'not installable' in log file: ${main_log}"
  fi

# Add newline as a separation.
  echo ""  
  
  
  