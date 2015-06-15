#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

ZFS_REPO_KEY_DEB=${GV_BINARY_DIR}/zfsonlinux_6_all.deb
ZFS_REPO_KEY_DEB_SIZE=$(GF_SIZE_OF ${ZFS_REPO_KEY_DEB})

# Install required packages.
apt-get -y --force-yes install lsb-release linux-headers-$(uname -r)

dpkg -i ${ZFS_REPO_KEY_DEB}
apt-get update
apt-get -y --force-yes install debian-zfs
rm -f ${ZFS_REPO_KEY_DEB}

# Log
echo "${GV_LOG} * Install lsb-release."
echo "${GV_LOG} * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list."
echo "${GV_LOG} * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg."
echo "${GV_LOG} * Install debian-zfs."
echo "${GV_LOG} * Delete ${ZFS_REPO_KEY_DEB}[${ZFS_REPO_KEY_DEB_SIZE}K]."