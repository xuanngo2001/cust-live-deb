#!/bin/bash
set -e
# Description: List helpful commands
#   Highlight comment: ./user-help.sh | grep -E '^|#.*'

cat << EndOfUserHelp
  # Switch to anther user account.
  su - poweruser
  
EndOfUserHelp