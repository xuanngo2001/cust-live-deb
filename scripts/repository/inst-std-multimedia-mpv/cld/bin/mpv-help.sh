#!/bin/bash
set -e
# Description: List helpful commands for mpv
#   Highlight comment: ./mpv-help.sh | grep -E '^|#.*'

cat << EndOfMPVhelp
  # Play videos found
  mpv -playlist <(locate somepattern | grep otherpattern)  
EndOfMPVhelp