#!/bin/bash
set -e
# Description: Update installation scripts.


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


# Copy all scripts to live system.
yes | cp -vR ./scripts "${CHROOT_DIR}/root"