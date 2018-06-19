#!/bin/bash
set -e
# Description: List filenames with trailing spaces. This is to help renaming process.
#  Note: from ../inst-min-con-cld-tools/cld/bin

### Find the longest filename.
MAX_LENGTH=0
while IFS='' read -r FILENAME || [[ -n "$FILENAME" ]]; do
 
  LENGTH=${#FILENAME}
  if [ "${LENGTH}" -gt "${MAX_LENGTH}" ]; then
    MAX_LENGTH=${LENGTH}
  fi 
 
done < <( ls -1 )


### List the same filenames side by side.
MAX_LENGTH=$((MAX_LENGTH+2))  # +2 because of the 2 quotes.
while IFS='' read -r FILENAME || [[ -n "$FILENAME" ]]; do
 
  printf "%-${MAX_LENGTH}s\n" "\"${FILENAME}\""
 
done < <( ls -1 )
echo ${MAX_LENGTH}