#!/bin/bash
set -e
# Description: Log into chroot environment.

CHROOT_DIR=$1

# Error Handling
  CMD_EXAMPLES=$(printf "%s\n%s\n" \
                        "  e.g. $0 <CHROOT_DIR>"\
                        "  e.g. $0 /path/to/chroot/"\
                )
  if [ ! -d "${CHROOT_DIR}" ]; then
    echo "Error: Chroot directory: ${CHROOT_DIR}: no such directory. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  
  CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")

  if [ ! -d "${CHROOT_DIR}/root" ]; then
    echo "Error: root/ directory is missing from ${CHROOT_DIR}: Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  
# Copy all scripts to live system.
./update-scripts.sh "${CHROOT_DIR}"

# Mount & load bashrc.
MOUNT_CMD="mount none -t proc /proc; mount none -t sysfs /sys; mount none -t devpts /dev/pts"
echo "${MOUNT_CMD}"
MOUNT_CMD="echo 'mount cancelled'"
./cld-mount.sh ${CHROOT_DIR}
chroot "${CHROOT_DIR}" /bin/bash -c "${MOUNT_CMD}; chmod +x /root/scripts/in-chroot-ps1.sh; /root/scripts/in-chroot-ps1.sh"

# Get in
chroot "${CHROOT_DIR}"