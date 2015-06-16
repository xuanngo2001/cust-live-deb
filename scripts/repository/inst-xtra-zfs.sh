#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install required packages.
apt-get -y --force-yes install lsb-release libc6-dev

# Instal ZFS
ZFS_REPO_KEY_DEB=${GV_BINARY_DIR}/zfsonlinux_6_all.deb
ZFS_REPO_KEY_DEB_SIZE=$(GF_SIZE_OF ${ZFS_REPO_KEY_DEB})
dpkg -i ${ZFS_REPO_KEY_DEB}
apt-get update
apt-get -y --force-yes install debian-zfs
rm -f ${ZFS_REPO_KEY_DEB}

# Log
ZFS_VERSION=$(modinfo zfs | grep ^version | tr -s ' ')
if [ -z "${ZFS_VERSION}" ]; then
	ZFS_VERSION="ERROR: ZFS installation failed!"
fi
echo "${GV_LOG} * Install lsb-release."
echo "${GV_LOG} * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list."
echo "${GV_LOG} * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg."
echo "${GV_LOG} * Install debian-zfs: ${ZFS_VERSION}."
echo "${GV_LOG} * Delete ${ZFS_REPO_KEY_DEB}[${ZFS_REPO_KEY_DEB_SIZE}K]."

# Reference:
# Tried packages from big to small:
#	apt-get -y --force-yes install lsb-release build-essential
#	apt-get -y --force-yes install lsb-release libc6-dev