#!/bin/bash
set -e
# Description: Make the script size log parsable.

SCRIPT_LOG=install-size-history.txt
SCRIPT_LOG_PARSABLE=install-size-history.data

SCRIPT_LOG=$(readlink -ev "${SCRIPT_LOG}")
SCRIPT_LOG_PARSABLE=$(readlink -ev "${SCRIPT_LOG_PARSABLE}")

# Copy 
  yes | cp "${SCRIPT_LOG}" "${SCRIPT_LOG_PARSABLE}"

# Get numbers
  sed -i 's/CLDS: \* Disk size = //'  "${SCRIPT_LOG_PARSABLE}"
  sed -i 's/K\. Space Used = /; /'    "${SCRIPT_LOG_PARSABLE}"
  sed -i 's/K\.$//'                   "${SCRIPT_LOG_PARSABLE}"
  
  sed -i 's/K. Runtime = /; /'       "${SCRIPT_LOG_PARSABLE}"
  sed -i 's/\.$//'                   "${SCRIPT_LOG_PARSABLE}"
  
