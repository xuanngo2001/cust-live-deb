#!/bin/bash
# Description: Check error in log file.


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

# Get command not found.
  grep_pattern='command not found'
  if grep -F "${grep_pattern}" "${main_log}" > /dev/null
  then
    echo "${grep_pattern} in log file: ${main_log}"
    cmd_not_found=$(grep -F "${grep_pattern}" ${main_log})

    echo "${cmd_not_found}"
    
  else
    echo "No ${grep_pattern}: ${main_log}"
  fi

# Add newline as a separation.
  echo ""
  
