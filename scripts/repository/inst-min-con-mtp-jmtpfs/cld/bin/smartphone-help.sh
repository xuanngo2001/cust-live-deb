#!/bin/bash
set -e
# Description: List helpful commands for mpv
#   Highlight comment: ./mpv-help.sh | grep -E '^|#.*'

cat << EndOfMPVhelp
  # Connect your smartphone.
    mkdir /path/to/your/mount/directory/
    jmtpfs -o allow_other /path/to/your/mount/directory/
  # Enter your PIN to unlock your smartphone.
    cd /path/to/your/mount/directory/
EndOfMPVhelp