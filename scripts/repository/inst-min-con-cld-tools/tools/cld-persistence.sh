#!/bin/bash
set -e
# Description: Create a persistent image file.
PERSISTENCE_IMG_SIZE=$1

# Error handling
####################################
if [ -z "${PERSISTENCE_IMG_SIZE}" ]; then
    echo "Error: Missing argument. Add size number in megabytes. Aborted!"
    echo "   e.g.: $0 <SIZE_IN_MB> "
    echo "   e.g.: $0 2048"
    exit 1;
fi

IS_NUMBER_RE='^[0-9]+$'
if ! [[ "${PERSISTENCE_IMG_SIZE}" =~ ${IS_NUMBER_RE} ]] ; then
   echo "Error: ${PERSISTENCE_IMG_SIZE} is not a number. Aborted!" >&2; exit 1
fi

MIN_SIZE_MB=16
if [ "${PERSISTENCE_IMG_SIZE}" -lt "${MIN_SIZE_MB}" ]; then
  echo "Error: Persistence image size(${PERSISTENCE_IMG_SIZE} MB) is too small, need more than ${MIN_SIZE_MB} MB. Aborted!" >&2; exit 1
fi


# Check for free space
####################################
function GET_FREE_SPACE_KB()
{
  local LOCATION=$1
  local FREE_SPACE_MB=$(df -k --output=avail ${LOCATION} | tail -1 )
  echo ${FREE_SPACE_MB}
}
FREE_SPACE_KB=$(GET_FREE_SPACE_KB $(readlink -e .))
PERSISTENCE_IMG_SIZE_KB=$((PERSISTENCE_IMG_SIZE*1024))
if [ "${PERSISTENCE_IMG_SIZE_KB}" -gt "${FREE_SPACE_KB}" ]; then
  echo "Error: Not enough space. Wanted ${PERSISTENCE_IMG_SIZE} MB but only has $((${FREE_SPACE_KB}/1024)) MB. Aborted!" >&2; exit 1
fi

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
echo ">>>>>>>>>> $(readlink -e ${PERSISTENCE_IMG_FILE}) created. <<<<<<<<<<"


