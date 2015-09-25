#!/bin/bash
set -e
# Description: Show hard drive informations

# Get ataX.
while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
 
  ATA=$(echo ${LINE}| sed -e "s/.*\/\(ata[0-9]*\)\/.*/\1/")
  DEVICE=$(echo ${LINE}| sed -e "/.*\/ata[0-9]*\/.*/ {s/.*block\///}")
  echo "${ATA} ${DEVICE}" 
 
done < <( ls -al /sys/block/* )