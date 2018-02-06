#!/bin/bash
set -e
# Description: List helpful commands for crontab
#   Reference: https://tecadmin.net/crontab-in-linux-with-20-examples-of-cron-schedule/
#   Highlight comment: ./crontab-help.sh | grep -E '^|#.*'

cat << EndOfCrontabHelp
  # Crontab will NOT add new entry, only overwrite the main configuration file.
  
  # Run script.sh hourly
  echo "@hourly script.sh" | crontab
  
  # List crontab job
  crontab -l
  
EndOfCrontabHelp