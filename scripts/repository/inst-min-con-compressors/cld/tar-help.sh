#!/bin/bash
set -e
# Description: List helpful commands for mpv
#   Highlight comment: ./mpv-help.sh | grep -E '^|#.*'

cat << EndOfTarHelp
  # Extract *.bz2
  tar -xvjf /some/file.bz2
  
EndOfTarHelp