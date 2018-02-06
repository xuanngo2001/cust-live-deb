#!/bin/bash
set -e
# Description: List helpful commands for wget
#   Highlight comment: ./wget-help.sh | grep -E '^|#.*'

cat << EndOfWgetHelp
  # Save as output_filename.html
  wget -O output_filename.html http://www.google.com
  
EndOfWgetHelp