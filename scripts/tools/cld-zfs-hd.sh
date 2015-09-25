#!/bin/bash
set -e
# Description: Show hard drive informations

# Get ataX.
while IFS='' read -r LINE || [[ -n "$LINE" ]]; do
 
  ATA=$(echo ${LINE}| sed -e 's/*.\/\(ata.\)\/.*/ xuan\1ngo/')
  echo ${ATA}
 
done < <( ls -al /sys/block/* )