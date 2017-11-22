#!/bin/bash
set -e
# Description: List helpful commands for feh
#   Highlight comment: ./feh-help.sh | grep -E '^|#.*'

cat << EndOfFehHelp
  # View image from list of files
  feh -f list.txt
  
  # Display image in window size: width x height 
  feh -g 400x400
EndOfFehHelp