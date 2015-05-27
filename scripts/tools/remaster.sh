#!/bin/bash
set -e

# Note: 
#   * All size values are in kilobytes.
#   * Avoid using other applications than GNU coreutils applications: http://en.wikipedia.org/wiki/GNU_Core_Utilities.

WORKING_DIR=$(realpath $1)


# Variables.
DATE_STRING=$(date +"%Y-%m-%d_%0k.%M.%S")


# Error Handling
##################
if [ -z ${WORKING_DIR} ] || [ ! -d ${WORKING_DIR} ]; then
  echo "ERROR: Please provide working directory path."
  echo " e.g.: $0 /tmp/"
  exit 0
fi

# Check sizes
##############
# Get total live system size in kilobytes.
LIVE_SYS_SIZE=$(du -bcsk --exclude=/{dev,live,lib/live/mount,cdrom,mnt,proc,sys,media,run,tmp,initrd,var/cache/apt,var/lib/apt} / | head -n 1 | cut -f1)

# Get free space of WORKING.
WORKING_FREE_SPACE=$(df -k ${WORKING_DIR} | tail -n1 | tr -s ' ' | cut -d ' ' -f4)

# Stop if not enough space.
if [ "${LIVE_SYS_SIZE}" -gt "${WORKING_FREE_SPACE}" ]; then
  echo "ERROR: Not enough free space."
  printf "%25s = %'10dK\n" "Live System Size"             "${LIVE_SYS_SIZE}"
  printf "%25s = %'10dK\n" "Free space at $(basename $(realpath ${WORKING_DIR}))/" "${WORKING_FREE_SPACE}"
  exit 0
fi

# Create new squashfs
######################
SQUASHFS_DIR=${WORKING_DIR}/lds-new-squashfs
# Copy live system to working directory.
echo "Copy live system to ${SQUASHFS_DIR}/ ..."
rsync -a / "${SQUASHFS_DIR}" --info=progress2 --exclude=/{dev,live,lib/live/mount,cdrom,mnt,proc,sys,media,run,tmp,initrd,var/cache/apt,var/lib/apt} --exclude=${WORKING_DIR} 2> /dev/null

exit 0
# Create new squash file
echo "Creating new squashfs..."
SQUASHFS_FILE=${WORKING_DIR}/filesystem.squashfs_${DATE_STRING}
mksquashfs ${SQUASHFS_DIR} ${SQUASHFS_FILE} -comp xz -e boot

echo "${SQUASHFS_FILE} created."