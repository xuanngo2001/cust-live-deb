#!/bin/bash
# Description: Create an iso-hybrid.
# Requirements:

WORKING_DIR=$(realpath $1)

# Error Handling
##################################################################
if [ ! -e ${WORKING_DIR} ]; then
  echo "ERROR: Please provide working directory path."
  echo " e.g.: $0 /tmp/"
  exit 1
fi

if [ ! -d ${WORKING_DIR} ]; then
  echo "ERROR: ${WORKING_DIR} is not a directory."
  exit 1
fi

##################################################################
# Create ./iso-binary
ISO_BINARY_DIR=${WORKING_DIR}/iso-binary
mkdir ${ISO_BINARY_DIR}
yes | cp -R /lib/live/mount/medium/isolinux/ ${ISO_BINARY_DIR}

# Copy vmlinuz & initrd to ./iso-binary/live/.
ISO_LIVE_DIR=${ISO_BINARY_DIR}/live
mkdir ${ISO_LIVE_DIR}
yes | cp -R /lib/live/mount/medium/live/initrd ${ISO_LIVE_DIR}
yes | cp -R /lib/live/mount/medium/live/vmlinuz ${ISO_LIVE_DIR}

# Copy squashfs to ./iso-binary/live/.
yes | cp -R ${WORKING_DIR}/filesystem.squashfs_* ${ISO_LIVE_DIR}/filesystem.squashfs


# Check if vmlinuz & initrd exist in binary/live/.
if [ ! -e ${ISO_LIVE_DIR}/initrd ]; then
  echo "Error: ${ISO_LIVE_DIR}/initrd is missing. ISO will not boot."
  exit 1;
fi
if [ ! -e ${ISO_LIVE_DIR}/vmlinuz ]; then
  echo "Error: ${ISO_LIVE_DIR}/vmlinuz is missing. ISO will not boot."
  exit 1;
fi

if [ ! -e ${ISO_LIVE_DIR}/filesystem.squashfs ]; then
  echo "Error: ${ISO_LIVE_DIR}/filesystem.squashfs is missing. ISO will not boot."
  exit 1;
fi


# Create ISOHYBRID.
##################################################################
# Note: boot.cat is automatically created
YYYY_MM_DD=$(date +"%Y-%m-%d")
HH_MM_SS=$(date +"%0k.%M.%S")
DATE_STRING="${YYYY_MM_DD}_${HH_MM_SS}"
APP_ID=cust-live-deb-64
ISO_FILENAME="${APP_ID}_${DATE_STRING}.iso"
xorriso -as mkisofs -r -J -joliet-long -l \
				-isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin -partition_offset 16 \
				-A "${APP_ID}"  \
				-V "${APP_ID}" \
				-b isolinux/isolinux.bin \
				-c isolinux/boot.cat -no-emul-boot -boot-load-size 4 \
				-boot-info-table \
				-o ${ISO_FILENAME} \
				${ISO_BINARY_DIR}
# CD label: max of 32 characters, [A-Z0-9_]

