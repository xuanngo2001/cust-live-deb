#!/bin/bash
set -e
# Description: List helpful commands for tar
#   Highlight comment: ./tar-help.sh | grep -E '^|#.*'

cat << EndOfTarHelp
  # Un/Compress to tar.
  tar -cf output.tar someDir/ file1 file2
  tar -xf output.tar
  
  # Decompress gzip file
  tar -xzvf drupal.tar.gz
  
EndOfTarHelp