#!/bin/bash

# Description: Transfer ISOHYBRID to USB.

ISOHYBRID=$1
USB_DEVICE=$2

# Arguments error handling
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


# Transfer iso-hybrid to USD device
####################################
dd if="${ISOHYBRID}" of="${USB_DEVICE}" bs=4M

# Flush write operations.
sync

# Create persistent file in the USB
####################################


# Done
####################################
echo "Done!"
