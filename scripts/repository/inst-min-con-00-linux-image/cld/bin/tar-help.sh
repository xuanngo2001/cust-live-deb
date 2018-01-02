#!/bin/bash
set -e
# Description: List helpful commands for tar
#   Highlight comment: ./tar-help.sh | grep -E '^|#.*'

cat << EndOfTarHelp
  # Decompress gzip file
  tar -xzvf drupal.tar.gz
  
EndOfTarHelp