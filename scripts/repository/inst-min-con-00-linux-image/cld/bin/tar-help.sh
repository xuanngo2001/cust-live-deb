#!/bin/bash
set -e
# Description: List helpful commands for tar
#   Highlight comment: ./tar-help.sh | grep -E '^|#.*'

cat << EndOfTarHelp
  # Un/Compress tar.
  tar -cf archive.tar /path/to/dir/ file1 file2
  tar -xf archive.tar
  
  # Un/Decompress gzip file.
  tar -czvf archive.tar.gz /path/to/dir/ file1 file2
  tar -xzvf archive.tar.gz
  
EndOfTarHelp