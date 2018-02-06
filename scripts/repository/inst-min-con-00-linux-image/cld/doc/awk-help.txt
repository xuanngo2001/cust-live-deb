#!/bin/bash
set -e
# Description: List helpful commands for awk.
#   Note: awk-help.sh is in this dir because of mawk.
#   Highlight comment: ./awk-help.sh | grep -E '^|#.*'

cat << EndOfAwkHelp
  # Remove emplty lines.
  m/awk NF
  
EndOfAwkHelp