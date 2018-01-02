#!/bin/bash
set -e
# Description: List helpful commands for find
#   Highlight comment: ./find-help.sh | grep -E '^|#.*'

cat << EndOfFindHelp
  # A single sed command for each file is executed.
  find . -type f -name "*.txt" -exec sed -i 's/SEARCH/REPLACE/g' {} \;
  
  # As many files as possible are given as parameters to sed at once.
  find . -type f -name "*.txt" -exec sed -i 's/SEARCH/REPLACE/g' {} +
  
EndOfFindHelp