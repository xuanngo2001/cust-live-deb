#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# NOTE:
#   There is no need to add "deb http://archive.zfsonlinux.org/debian jessie main" in /etc/apt/sources.list. Already add by "dpkg -i ${ZFS_REPO_KEY_DEB}"

# Explicitly install dependent packages
# Fix issue: https://github.com/zfsonlinux/zfs/issues/3065
#            https://github.com/zfsonlinux/zfs/issues/1466
#            https://github.com/zfsonlinux/zfs/issues/1860
#dpkg --purge --force-depends spl-dkms 
apt-get -d -y --force-yes install file
apt-get -y --force-yes install linux-headers-amd64 build-essential


# Install required packages.
apt-get -y --force-yes install lsb-release libc6-dev spl-dkms


# Install ZFS
ZFS_REPO_KEY_DEB=zfsonlinux_6_all.deb
ZFS_REPO_KEY_DEB_SIZE=$(GF_SIZE_OF ${ZFS_REPO_KEY_DEB})
dpkg -i ${ZFS_REPO_KEY_DEB}
apt-get update
apt-get -y --force-yes install debian-zfs
rm -f ${ZFS_REPO_KEY_DEB}

# 0.6.4->0.6.5.1: https://github.com/zfsonlinux/zfs/issues/3841
# Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%.
#yes | cp zfs.conf /etc/modprobe.d/ 

# v0.6.5.8: https://github.com/zfsonlinux/zfs/releases/tag/zfs-0.6.5.8

# Log
ZFS_VERSION=$(modinfo zfs | grep ^version | tr -s ' ')
if [ -z "${ZFS_VERSION}" ]; then
	ZFS_VERSION="ERROR: ZFS installation failed!"
fi
echo "${GV_LOG} * Install lsb-release."
echo "${GV_LOG} * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list."
echo "${GV_LOG} * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg."
echo "${GV_LOG} * Install debian-zfs: ${ZFS_VERSION}, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html"
echo "${GV_LOG} * Delete ${ZFS_REPO_KEY_DEB}[${ZFS_REPO_KEY_DEB_SIZE}K]."
#echo "${GV_LOG} * Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%."


# Reference:
# Tried packages from big to small:
#	apt-get -y --force-yes install lsb-release build-essential
#	apt-get -y --force-yes install lsb-release libc6-dev

# Failed:
# apt-get -y --force-yes install lsb-release linux-headers-$(uname -r)
# apt-get -y --force-yes install lsb-release linux-libc-dev

# Test: apt-get -y remove debian-zfs zfs-dkms zfsonlinux zfsutils

# Uninstall:
#   apt-get remove -y debian-zfs lsb-release libc6-dev; apt-get -y autoremove