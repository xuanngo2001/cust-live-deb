#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install debootstrap.
apt-get -y --force-yes install aufs-tools

# Log
echo "${GV_LOG} * Install aufs-tools so that you can /usr/sbin/update-initramfs.orig.initramfs-tools -u -t."

# REJECTION:
#   Failed to fix fsck.aufs.