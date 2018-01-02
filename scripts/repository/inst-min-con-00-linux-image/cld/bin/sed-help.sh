#!/bin/bash
set -e
# Description: List helpful commands for sed
#   Highlight comment: ./sed-help.sh | grep -E '^|#.*'

cat << EndOfSedHelp
  # Use pipe(|) instead slash(/)
  sed 's|/home|/new|' input_file.txt
EndOfSedHelp