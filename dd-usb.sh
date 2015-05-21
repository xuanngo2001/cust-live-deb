#!/bin/bash

# Description: Transfer ISOHYBRID to USB.

ISOHYBRID=$1
USB_DEVICE=$2

# Arguments error handling.
###########################
if [ "${#}" -ne "2" ]; then
  echo "ERROR: Arguments missing. Please provide <ISOHYBRID> and <USB_DEVICE>."
  echo "   e.g: $0 my_iso_hybrid.iso /dev/sdX"
  exit 0
fi

# Prevent WRONG USB device.
# Question if USB device is more than 16 gigabytes.
####################################################
GIGABYTES=1
MAX_BYTES_THRESHOLD=$((1073741824*${GIGABYTES}))
USB_DEVICE_SIZE_BYTES=$(blockdev --getsize64 "${USB_DEVICE}")
if [ "${USB_DEVICE_SIZE_BYTES}" -gt "${MAX_BYTES_THRESHOLD}" ];
then
  echo "******************** WARNING ********************"
  echo "${USB_DEVICE} is more than ${GIGABYTES} Gigabytes."
  echo -n "Are you sure that ${USB_DEVICE} is the right USB device? [Y/N] "
  read RIGHT_USB
  if [ "${RIGHT_USB}" != "Y" ]; then
    echo "OUT! Did nothing."
    exit 0
  fi
fi

# Delete all partitions on USD device.
####################################
dd if=/dev/zero of=${USB_DEVICE} bs=1k count=2048
sync; partprobe

# Transfer iso-hybrid to USD device.
####################################
dd if="${ISOHYBRID}" of="${USB_DEVICE}" bs=4M

# Flush write operations.
sync; partprobe

# Create a new partition in the USB.
####################################
# Create extended partition for the remaining USB.
(echo m; echo n; echo e; echo; echo; echo; echo w) | sudo fdisk "${USB_DEVICE}"

# Refresh partition table. 
sync; partprobe

# Create a logical partition of X MiB.
LOGICAL_PARTITION_SIZE_MB=200
(echo m; echo n; echo l; echo; echo "+${LOGICAL_PARTITION_SIZE_MB}M"; echo w) | sudo fdisk "${USB_DEVICE}"

# Refresh partition table. 
sync; partprobe

# Create persistent file in the USB
####################################
# Get logical partition name
NEW_LOGICAL_PARTITION=$(fdisk -l "${USB_DEVICE}" | grep "^/dev/" | grep " 83 " | cut -d' ' -f1)
PERSISTENCE_IMG_FILE=persistence
# Format logical parition
mkfs.ext4 -F "${NEW_LOGICAL_PARTITION}"

# Create an ext4-based image file to be used for persistence
PERSISTENCE_IMG_SIZE=$((${LOGICAL_PARTITION_SIZE_MB}-1))
dd if=/dev/null of=${PERSISTENCE_IMG_FILE} bs=1 count=0 seek="${PERSISTENCE_IMG_SIZE}M"
sync
mkfs.ext4 -F ${PERSISTENCE_IMG_FILE}

# Add persistence.conf to the image file.
PERSISTENCE_IMG_MNT_DIR=/tmp/persistence_img_mnt
rm -rf ${PERSISTENCE_IMG_MNT_DIR}
mkdir -p ${PERSISTENCE_IMG_MNT_DIR}
mount -t ext4 ${PERSISTENCE_IMG_FILE} ${PERSISTENCE_IMG_MNT_DIR}
echo "/ union" > ${PERSISTENCE_IMG_MNT_DIR}/persistence.conf
sync
umount ${PERSISTENCE_IMG_MNT_DIR}
rm -rf ${PERSISTENCE_IMG_MNT_DIR}

# Copy persistence image file to new logical partition
NEW_LOGICAL_PARTITION_MNT_DIR=/tmp/new-logical-partition-mnt
rm -rf ${NEW_LOGICAL_PARTITION_MNT_DIR}
mkdir -p ${NEW_LOGICAL_PARTITION_MNT_DIR}
mount -t ext4 "${NEW_LOGICAL_PARTITION}" "${NEW_LOGICAL_PARTITION_MNT_DIR}"
cp ${PERSISTENCE_IMG_FILE} ${NEW_LOGICAL_PARTITION_MNT_DIR}
sync
umount ${NEW_LOGICAL_PARTITION_MNT_DIR}
rm -rf ${NEW_LOGICAL_PARTITION_MNT_DIR}


# Done
####################################
echo "Done!"


# Test
# cat /proc/partitions