#!/bin/bash
set -e
# Description: Main script to create Cust-Live-Deb system.

SYSTEM=$(echo $1 | tr '[:upper:]' '[:lower:]')
DEB_REPO_URL=$(echo $2 | tr '[:upper:]' '[:lower:]')

# Error handling
  ARGS_REQUIRED=2
  CMD_EXAMPLES=$(printf " %s\n %s\n %s\n" \
                        " e.g. $0 <SYSTEM> <DEB_REPO_URL>"\
                        " e.g. $0 std http://ftp.debian.org/debian/"\
                        " e.g. $0 min http://localhost/aptly-repo/"\
                )
  if [ "$#" -ne "${ARGS_REQUIRED}" ]; then
    echo "Error: ${ARGS_REQUIRED} arguments are required. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi

# Update manuals.
  ./cld-create-manuals.sh

# Build ISO
	CHROOT_DIR=/media/imdb/chroot/
	mkdir -p "${CHROOT_DIR}"
	CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")
	
	./cld-debootstrap.sh "${CHROOT_DIR}" "${DEB_REPO_URL}"
	./cld-chroot.sh "${SYSTEM}" "${CHROOT_DIR}"  "${DEB_REPO_URL}"
	./cld-backup-logs.sh "${CHROOT_DIR}/root/scripts/logs" "${PWD}"
	./cld-mkiso.sh "${SYSTEM}" "${CHROOT_DIR}"

# Logs.
  LOG_DIR=./logs/
	./cld-create-md.sh "${LOG_DIR}"
	./cld-log-package-sizes.sh "${LOG_DIR}"


    
