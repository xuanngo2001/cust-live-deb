#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add jessie-backports source.
GF_ADD_SOURCE_LIST live "deb http://http.debian.net/debian jessie-backports main contrib non-free"
apt-get update

# Install required packages.
apt-get install -y --force-yes linux-headers-amd64 


# Install ZFS
debconf-set-selections -v zfs-dkms.seed
apt-get install -y --force-yes -t jessie-backports spl-dkms zfs-dkms

# If you want to boot from ZFS, you'll need zfs-initramfs package too:
apt-get install -y --force-yes -t jessie-backports zfs-initramfs


# Log
ZFS_VERSION=$(modinfo zfs | grep ^version | tr -s ' ')
if [ -z "${ZFS_VERSION}" ]; then
	ZFS_VERSION="ERROR: ZFS installation failed!"
fi
echo "${GV_LOG} * Install instructions: https://github.com/zfsonlinux/zfs/wiki/Debian"
echo "${GV_LOG} * Install zfs-dkms: ${ZFS_VERSION}, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html"
echo "${GV_LOG} * Install zfs-initramfs to be able to boot from ZFS."
#echo "${GV_LOG} * Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%."

# History:
	# 0.6.4->0.6.5.1: https://github.com/zfsonlinux/zfs/issues/3841
	# Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%.
	#yes | cp zfs.conf /etc/modprobe.d/ 
	
	# v0.6.5.8: https://github.com/zfsonlinux/zfs/releases/tag/zfs-0.6.5.8

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