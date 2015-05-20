#!/bin/bash

UMOUNT_CMD="umount -lf /sys /dev/pts /proc"
echo "${UMOUNT_CMD}"
chroot chroot/ /bin/bash -c "${UMOUNT_CMD}"


