#!/bin/bash
set -e
# Description: List helpful commands for zfs
#   Highlight comment: ./zfs-help.sh | grep -E '^|#.*'

cat << EndOfZfsHelp
  # Get Zfs version
  modinfo zfs | grep ^version
  
  # Import all existing know zfs partitions.
  zpool import -a

EndOfZfsHelp