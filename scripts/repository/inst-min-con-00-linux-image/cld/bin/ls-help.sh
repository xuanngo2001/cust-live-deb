#!/bin/bash
set -e
# Description: List helpful commands for ls
#   Highlight comment: ./ls-help.sh | grep -E '^|#.*'

cat << EndOfLsHelp
  # Sort by size.
  ls -S
  
  # List directories.
  ls -d */
EndOfLsHelp