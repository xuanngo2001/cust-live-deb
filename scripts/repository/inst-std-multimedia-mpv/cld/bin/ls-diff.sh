#!/bin/bash
set -e
# Description: List files that are new from input file.
#   Usage: ./this-script.sh prev-list-file.txt
#     mpv --playlist prev-list-file.txt
#     For all files viewed, put # in front of filename from prev-list-file.txt. 

prev_ls_files=$1

# If ${prev_ls_files} not found, then create it.
  if [ -f "${prev_ls_files}" ]; then
    touch "${prev_ls_files}"
    prev_ls_files=$(readlink -ev "${prev_ls_files}")
  fi

# Add new files found back to ${prev_ls_files}
  cat "${prev_ls_files}" | sed 's/^#//'  | sort > /tmp/file1.txt
  ls -1 | sort > /tmp/file2.txt
  comm -13 /tmp/file1.txt /tmp/file2.txt >> "${prev_ls_files}"
  rm -f /tmp/file1.txt /tmp/file2.txt
