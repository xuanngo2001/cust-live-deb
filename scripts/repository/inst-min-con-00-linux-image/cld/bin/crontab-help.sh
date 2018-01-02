#!/bin/bash
set -e
# Description: List helpful commands for crontab
#   Highlight comment: ./crontab-help.sh | grep -E '^|#.*'

cat << EndOfCrontabHelp
  # Run script.sh hourly
  echo "@hourly script.sh" | crontab
  
  # List crontab job
  crontab -l  
  
EndOfCrontabHelp