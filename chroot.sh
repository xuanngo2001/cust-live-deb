#!/bin/bash
set -e
# Description: Log into chroot environment.

ACTION=$1
CHROOT_DIR=$2

# Error Handling
  CMD_EXAMPLES=$(printf "%s\n%s\n%s\n" \
                        "  e.g. $0 <ACTION> <CHROOT_DIR>"\
                        "  e.g. $0 in /path/to/chroot/"\
                        "  e.g. $0 out /path/to/chroot/"\
                )
  if [ -z "${ACTION}" ]; then
    echo "Error: ACTION can't be empty. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
                  
  if [ ! -d "${CHROOT_DIR}" ]; then
    echo "Error: Chroot directory: ${CHROOT_DIR}: no such directory. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  if [ ! -d "${CHROOT_DIR}/root" ]; then
    echo "Error: root/ directory is missing from ${CHROOT_DIR}: Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")



ACTION=$(echo "${ACTION}" | tr '[:upper:]' '[:lower:]')

case "${ACTION}" in
  in)
    ./update-scripts.sh "${CHROOT_DIR}"
    ./cld-mount.sh ${CHROOT_DIR} || true
    chroot "${CHROOT_DIR}" /bin/bash -c "chmod +x /root/scripts/in-chroot-ps1.sh; /root/scripts/in-chroot-ps1.sh"
    chroot "${CHROOT_DIR}" /bin/bash -c "yes | cp /etc/apt/sources.list.tmp /etc/apt/sources.list"
    chroot "${CHROOT_DIR}"
    ;;
    
  out)
    ./cld-umount.sh "${CHROOT_DIR}"
    ;; 
esac;
