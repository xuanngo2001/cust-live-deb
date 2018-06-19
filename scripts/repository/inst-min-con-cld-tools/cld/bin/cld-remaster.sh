#!/bin/bash
# Note: 
#   * All size values are in kilobytes.
#   * Avoid using other applications than GNU coreutils applications: http://en.wikipedia.org/wiki/GNU_Core_Utilities.
#   * Need: grep, xargs
#  Note: from ../inst-min-con-cld-tools/cld/bin

WORKING_DIR=$(readlink -ev $1)


# Error Handling
##################################################################
if [ -z ${WORKING_DIR} ]; then
  echo "ERROR: Please provide a working directory path."
  echo " e.g.: $0 /tmp/"
  exit 1
fi

if [ ! -d ${WORKING_DIR} ] || [ ! -e ${WORKING_DIR} ]; then
  echo "ERROR: ${WORKING_DIR} : No such directory."
  exit 1
fi

# Check sizes
##################################################################
# Get total live system size in kilobytes.
EXCLUDE_DIRS_LIST=(--exclude=/{dev,live,lib/live/mount,proc,sys,media,run,tmp,var/cache/apt,var/lib/apt})
LIVE_SYS_SIZE=$(du -bcsk ${EXCLUDE_DIRS_LIST[*]} / | head -n 1 | cut -f1)


# Get free space of WORKING.
WORKING_FREE_SPACE=$(df -k ${WORKING_DIR} | tail -n1 | tr -s ' ' | cut -d ' ' -f4)

# Stop if not enough space.
if [ "${LIVE_SYS_SIZE}" -gt "${WORKING_FREE_SPACE}" ]; then
  echo "ERROR: Not enough free space."
  printf "%25s = %'10dK\n" "Live system size"             "${LIVE_SYS_SIZE}"
  printf "%25s = %'10dK\n" "Free space at $(basename $(readlink -ev ${WORKING_DIR}))/" "${WORKING_FREE_SPACE}"
  exit 1
fi

# Copy live system to working directory.
##################################################################
SQUASHFS_DIR=${WORKING_DIR}/lds-new-squashfs
echo "Copy live system to ${SQUASHFS_DIR}/ ..."
rsync -a / "${SQUASHFS_DIR}" --info=progress2 --update ${EXCLUDE_DIRS_LIST[*]} --exclude=${WORKING_DIR} 2> /dev/null

# Create empty directories of excluded directories. Otherwise, it will causes kernel panic.
mkdir -p "${SQUASHFS_DIR}"/{dev,live,lib/live/mount,proc,run,sys,tmp}

# Cleaning live system
##################################################################
echo "Cleaning live system ..."
## Required:
### If devices in /etc/fstab don't exit anymore, then it will fail to launch JWM.
rm -f "${SQUASHFS_DIR}"/etc/fstab

## Optional:
rm -f "${SQUASHFS_DIR}"/etc/resolv.conf
rm -f "${SQUASHFS_DIR}"/var/lib/dhcp/dhclient.leases
rm -f "${SQUASHFS_DIR}"${HOME}/.xsession-errors


# Shrink size of live system in the working directory.
##################################################################
echo "Shrink size of live system in ${SQUASHFS_DIR}."

zerosize() {
  find $* | while read file; do
    echo -n "."
    rm -f $file
    touch $file
  done
}

    zerosize "${SQUASHFS_DIR}"/usr/share/doc -type f -size +1c
    zerosize "${SQUASHFS_DIR}"/usr/share/doc -type l

    zerosize "${SQUASHFS_DIR}"/usr/share/man -type f -size +1c
    zerosize "${SQUASHFS_DIR}"/usr/share/man -type l


    zerosize "${SQUASHFS_DIR}"/usr/share/info -type f -size +1c
    zerosize "${SQUASHFS_DIR}"/usr/share/info -type l

    zerosize "${SQUASHFS_DIR}"/usr/share/gnome/help -type f -size +1c
    zerosize "${SQUASHFS_DIR}"/usr/share/gnome/help -type l

    zerosize "${SQUASHFS_DIR}"/usr/share/gtk-doc -type f -size +1c
    zerosize "${SQUASHFS_DIR}"/usr/share/gtk-doc -type l

    chown -R man:root "${SQUASHFS_DIR}"/usr/share/man

# Create new squash file
##################################################################
echo "Creating new squashfs..."
DATE_STRING=$(date +"%Y-%m-%d_%0k.%M.%S")
SQUASHFS_FILE=${WORKING_DIR}/filesystem.squashfs_${DATE_STRING}
mksquashfs ${SQUASHFS_DIR} ${SQUASHFS_FILE} -comp xz -e boot

echo ">>>>>>>>>>>>>>  ${SQUASHFS_FILE} created. <<<<<<<<<<<<<<<<<<<<<<"