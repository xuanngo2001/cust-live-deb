#!/bin/bash
set -e
# Description: Main script to create Cust-Live-Deb system.

SYSTEM=$(echo $1 | tr '[:upper:]' '[:lower:]')
DEB_REPO_URL=$(echo $2 | tr '[:upper:]' '[:lower:]')

## Error handling
####################
if [ "$#" -ne 2 ]; then
  echo "ERROR: Illegal number of parameters."
  echo "   e.g. $0 SYSTEM DEB_REPO_URL"
  echo "   e.g. $0 std http://ftp.debian.org/debian/"
  echo "   e.g. $0 min http://localhost/aptly-repo/"
  exit 1;
fi


### Main
####################
CHROOT_DIR=./chroot
mkdir -p "${CHROOT_DIR}"
CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")

# Create manuals.
  ./cld-create-manuals.sh


# debootstrap: create min linux system.
  ./cld-debootstrap.sh "${CHROOT_DIR}" "${DEB_REPO_URL}"

# chroot: process within chroot environment.
  ./cld-chroot.sh "${SYSTEM}" "${CHROOT_DIR}"  "${DEB_REPO_URL}"
  
./cld-backup-logs.sh "${CHROOT_DIR}/root/scripts/logs" .
./cld-mkiso.sh ${SYSTEM}

# Update README.md
  ./cld-update-readme.sh

./cld-log-package-sizes.sh

# Reference:
# chroot usage: http://stackoverflow.com/a/8157973
    
