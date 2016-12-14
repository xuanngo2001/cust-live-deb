#!/bin/bash
# Description: Check error in log file.

MAIN_LOG=/media/master/github/cust-live-deb/logs/main.log

  # Add newline as a separation.
  echo ""

  if grep -E '^E:|ERROR:' "${MAIN_LOG}" > /dev/null
  then
    echo "Error in log file: ${MAIN_LOG}"
    grep -E '^E:|ERROR:' ${MAIN_LOG} | sed 's/^/  /'
  
  else
      echo "No error in log file: ${MAIN_LOG}"
  fi

  # Add newline as a separation.
  echo ""  