#!/bin/bash
# Description: List packages that need manual update.

scripts_dir="./scripts/repository"

  # Add newline as a separation.
  echo ""

  find "${scripts_dir}" -type f -name "*.deb" -o -name "*.iso" -o -name "*.jar" | sed 's/^/   /'
  
  
  # Add newline as a separation.
  echo ""  
exit

  # Add newline as a separation.
  echo ""

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