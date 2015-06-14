#!/bin/bash
set -e

LIVE_SYSTEM_DIR=chroot
UMOUNT_CMD="umount -lf ${LIVE_SYSTEM_DIR}/sys ${LIVE_SYSTEM_DIR}/dev/pts ${LIVE_SYSTEM_DIR}/proc"
echo "${UMOUNT_CMD}"
/bin/bash -c "${UMOUNT_CMD}" || true


