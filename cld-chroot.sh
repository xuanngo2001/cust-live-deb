#!/bin/bash
set -e
# Description: Process within chroot environment.
#     chroot usage: http://stackoverflow.com/a/8157973
this_script=$(basename "${0}")
DATE_TIME_STR=$(date +'%Y-%m-%d_%H.%M.%S')
CURR_EXEC_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
#mkdir -p ${CURR_EXEC_DIR}/logs; exec > >(tee ${CURR_EXEC_DIR}/logs/${this_script}_${DATE_TIME_STR}.log) 2>&1
echo "⭐ ============ ${this_script}: ${DATE_TIME_STR} ============"
echo "💲 ./${this_script} $*"


# Variables.
	SYSTEM=$1
	CHROOT_DIR=$2
	
# Error Handling
  CMD_EXAMPLES=$(printf "%s\n%s\n%s\n" \
                        "  e.g. $0 <SYSTEM> <CHROOT_DIR>"\
                        "  e.g. $0 min chroot"\
                        "  e.g. $0 std my-chroot-dir"\
                )
  if [ "$#" -ne 2 ]; then
    echo "Error: 3 arguments are required. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi

  if [ -z "${SYSTEM}" ]; then
    echo "Error: Please provide the system name. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  
  if [ ! -d "${CHROOT_DIR}" ]; then
    echo "Error: Chroot directory: ${CHROOT_DIR}: no such directory. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
    
  CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")
  

# CHROOT
chroot "${CHROOT_DIR}" /bin/bash -c "cd /root/scripts; \
                                chmod +x setup-chroot.sh; \
																./setup-chroot.sh; \
																chmod +x scripts-ls.sh; \
																./scripts-ls.sh ${SYSTEM}; \
																chmod +x main.sh; \
																./main.sh"

echo "@@@@@@@@@@EEEE ${this_script} 👍 EEEE@@@@@@@@@@"

    
