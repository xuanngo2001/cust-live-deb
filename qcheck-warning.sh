#!/bin/bash
# Description: Check warnings in log file.

MAIN_LOG=/media/master/github/cust-live-deb/logs/main.log

  # Add newline as a separation.
  echo ""

  if grep -iE 'Warning:' "${MAIN_LOG}" > /dev/null
  then
    echo "Warnings in log file: ${MAIN_LOG}"
    warnings=$(grep -iE 'Warning:' ${MAIN_LOG} | sed 's/^/  /')
    warnings=$(echo "${warnings}" | grep -vF 'setlocale:')
    warnings=$(echo "${warnings}" | grep -v ' perl: .* locale')
    
    echo "${warnings}"
  else
      echo "No warning in log file: ${MAIN_LOG}"
  fi

  # Add newline as a separation.
  echo ""  