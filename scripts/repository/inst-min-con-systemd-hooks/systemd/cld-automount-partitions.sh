#!/bin/bash
set -e
echo "$0: $(date)" >> /root/cld/boot-sequence.txt
# Description: Automount partitions.
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd

while IFS='' read -r UNMOUNTED_LINE || [[ -n "${UNMOUNTED_LINE}" ]]; do

echo "${UNMOUNTED_LINE}"
  DEVICE=$(echo "${UNMOUNTED_LINE}" | cut -d' ' -f1)
  DEVICE="/dev/${DEVICE}"
  FSTYPE=$(echo "${UNMOUNTED_LINE}" | cut -d' ' -f2)
  LABEL=$(echo "${UNMOUNTED_LINE}" | cut -d' ' -f3)
  LABEL=$(echo -e "${LABEL}") # Convert hexcode back(e.g: space(\x20)
  MOUNTPOINT="/media/${LABEL}"
  
  echo "${DEVICE}| ${FSTYPE}| ${MOUNTPOINT}| "
  if [ -a "${MOUNTPOINT}" ]; then
    echo "Warning: ${MOUNTPOINT} already existed. Didn't mount [${DEVICE}| ${FSTYPE}| ${MOUNTPOINT}]."
  else
    mkdir -p "${MOUNTPOINT}"
    mount "${DEVICE}" "${MOUNTPOINT}"
    echo "Mounted: [${DEVICE}| ${FSTYPE}| ${MOUNTPOINT}]."
  fi

done < <(lsblk -r -o "NAME,FSTYPE,LABEL,MOUNTPOINT" | grep -vF '  ' | tail -n +2 | grep -vF ' /' | grep -vF ' zfs_member ') 
    # List all devices | Exclude devices without NAME,FSTYPE,LABEL,MOUNTPOINT | Skip the first line 
    #   | Exclude mounted devices | Exclude ZFS partitions
    
