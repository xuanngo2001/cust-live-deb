#!/bin/bash

# Mount
MOUNT_CMD="mount none -t proc /proc; mount none -t sysfs /sys; mount none -t devpts /dev/pts"
echo "${MOUNT_CMD}"
chroot chroot/ /bin/bash -c "${MOUNT_CMD}; chmod +x /root/scripts/in-chroot-ps1.sh; /root/scripts/in-chroot-ps1.sh"

# Get in
chroot chroot/