#!/bin/bash
set -e
# Description: Process within chroot environment.
#     chroot usage: http://stackoverflow.com/a/8157973

# Variables.
	SYSTEM=$1
	CHROOT_DIR=$2
	DEB_REPO_URL=$3

# Error Handling
  CMD_EXAMPLES=$(printf "%s\n%s\n%s\n" \
                        "  e.g. $0 <SYSTEM> <CHROOT_DIR> <DEB_REPO_URL>"\
                        "  e.g. $0 min chroot http://ftp.debian.org/debian/"\
                        "  e.g. $0 std my-chroot-dir http://localhost/aptly-repo/"\
                )
  if [ "$#" -ne 3 ]; then
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
    
  if [ -z "${DEB_REPO_URL}" ]; then
    echo "Error: Please provide the debian repository URL. Aborted!"
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
																chmod +x install.sh; \
																./install.sh"

    
