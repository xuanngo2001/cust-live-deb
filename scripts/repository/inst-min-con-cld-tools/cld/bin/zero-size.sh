#!/bin/bash
set -e
# Description: Turn file size to 0.
#  Note: from ../inst-min-con-cld-tools/cld/bin
script_name=$(basename "$0")

# Error handling.
  if [ $# -eq 0 ]; then
    echo "Error: ${script_name}: No argument. Aborted!"
    echo "   e.g. ${script_name} file1 file2 file..."
    exit 1;
  fi


# Show which files will be zeroed.
  for file in "$@"; do
    echo "   ${file}."
  done

  echo -n 'Are you sure to zero out filesize of the above files? [Y/N] '
  read zeroed_confirm
  if [ "${zeroed_confirm}" != "Y" ]; then
    echo "OUT! Did nothing."
    exit 1
  fi

# Zero out files
  for file in "$@"; do
    if [ -f "${file}" ]; then
    
      rm -f "${file}" && 
      touch "${file}" &&
      echo "Info: ${script_name}: zero ${file}."
    else
      
      echo "Error: ${script_name}: '${file}' is not a file." 
    fi
  done
 

