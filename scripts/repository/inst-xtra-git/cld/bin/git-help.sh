#!/bin/bash
set -e
# Description: List helpful commands for git
#   Highlight comment: ./git-help.sh | grep -E '^|#.*'

cat << EndOfGitHelp
  # List files that will be deleted.
  git ls-files --deleted
    
EndOfGitHelp