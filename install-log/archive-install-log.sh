#!/bin/bash
set -e

# Description: Archive install-log files modified 7 days ago.

ARCHIVE_DIR="archive"
while IFS='' read -r FILENAME || [[ -n "$FILENAME" ]]; do
  
  echo "Archive ${FILENAME} ..."
  tar -zcvf ${ARCHIVE_DIR}/${FILENAME}.tar.gz ${FILENAME} && rm -f ${FILENAME}
  
done < <( find . -type f -mtime +7 | grep -v 'tar.gz' | grep -v '.sh' )
# Find all files modified 7 days ago
#   Exclude tar.gz
#   Exclude .sh