#!/bin/bash
set -e
# Description: Get out of chroot environment.
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


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
  
  

# Unmount everything.  
umount -lfv ${CHROOT_DIR}{/sys,/dev/pts,/proc,/dev}


echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"