#!/bin/bash
set -e
# Description: List helpful commands for vbox
#   Highlight comment: ./vbox-help.sh | grep -E '^|#.*'

cat << EndOfVboxHelp
  # Get Virtualbox Guest Version
  modinfo vboxguest | grep ^version | tr -s ' '

  # Show what are being installed.
  lsmod | grep vbox
  
EndOfVboxHelp