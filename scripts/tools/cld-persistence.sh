#!/bin/bash
set -e
# Description: Create a persistent image file.
PERSISTENCE_IMG_SIZE=$1

# Create an ext4-based image file to be used for persistence
####################################
PERSISTENCE_IMG_FILE=persistence
rm -f ${PERSISTENCE_IMG_FILE}
dd if=/dev/null of=${PERSISTENCE_IMG_FILE} bs=1 count=0 seek="${PERSISTENCE_IMG_SIZE}M"
sync
mkfs.ext4 -F ${PERSISTENCE_IMG_FILE}

# Add persistence.conf to the image file.
####################################
PERSISTENCE_IMG_MNT_DIR=/tmp/persistence_img_mnt
rm -rf ${PERSISTENCE_IMG_MNT_DIR}
mkdir -p ${PERSISTENCE_IMG_MNT_DIR}
mount -t ext4 ${PERSISTENCE_IMG_FILE} ${PERSISTENCE_IMG_MNT_DIR}
echo "/ union" > ${PERSISTENCE_IMG_MNT_DIR}/persistence.conf
umount ${PERSISTENCE_IMG_MNT_DIR}
rm -rf ${PERSISTENCE_IMG_MNT_DIR}


# Done
####################################
echo ">>>>>>>>>> $(realpath ${PERSISTENCE_IMG_FILE}) created. <<<<<<<<<<"


