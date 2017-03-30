#!/bin/bash
set -e
# Description: Automount partitions.

while IFS='' read -r UNMOUNTED_LINE || [[ -n "${UNMOUNTED_LINE}" ]]; do

  DEVICE=$(echo "${UNMOUNTED_LINE}" | cut -d' ' -f1)
  DEVICE="/dev/${DEVICE}"
  FSTYPE=$(echo "${UNMOUNTED_LINE}" | cut -d' ' -f2)
  LABEL=$(echo "${UNMOUNTED_LINE}" | cut -d' ' -f3)
  LABEL=$(echo -e "${LABEL}") # Convert hexcode back(e.g: space(\x20)
  MOUNTPOINT="/media/${LABEL}"
  
  if mountpoint -q "${MOUNTPOINT}"; then
    echo "Warning: Conflicting mountpoint path: ${MOUNTPOINT} already existed. Mount skipped for [${DEVICE}| ${FSTYPE}| ${MOUNTPOINT}]."
  else
    mkdir -p "${MOUNTPOINT}"
    mount "${DEVICE}" "${MOUNTPOINT}"
    echo "Mounted: [${DEVICE}| ${FSTYPE}| ${MOUNTPOINT}]."
  fi

done < <(lsblk -r -o "NAME,FSTYPE,LABEL,MOUNTPOINT" | grep -vF '  ' | tail -n +2 | grep -vF ' /' | grep -vF ' zfs_member ') 
    # List all devices | Exclude devices without NAME,FSTYPE,LABEL,MOUNTPOINT | Skip the first line 
    #   | Exclude mounted devices | Exclude ZFS partitions
    
