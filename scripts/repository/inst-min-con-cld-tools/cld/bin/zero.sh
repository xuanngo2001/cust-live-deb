#!/bin/bash
set -e
# Description: Turn file size to 0.

# Show which files will be zeroed.
  for file in "$@"
  do
    echo "   ${file}."
  done

  echo -n 'Are you sure to zero out filesize of the above files? [Y/N] '
  read zeroed_confirm
  if [ "${zeroed_confirm}" != "Y" ]; then
    echo "OUT! Did nothing."
    exit 1
  fi

# Zero out files
  for file in "$@"
  do
    rm -f "${file}" && 
    touch "${file}" &&
    echo "zero: ${file}."
  done