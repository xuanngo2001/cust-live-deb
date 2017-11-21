#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages.
apt-get install -y linux-headers-amd64 lsb-release

KERNEL_HEADER=$(dpkg-query -W -f='${binary:Package}\n' linux-image-* | head -n 1 | sed 's/linux-image-//')
apt-get -y install dkms libc6-dev  build-essential
apt-get -y install linux-headers-${KERNEL_HEADER}
apt-get -y install module-assistant
m-a -i prepare

# Install zfs-dkms.
debconf-set-selections -v zfs-dkms.seed
apt-get -y install spl-dkms # Install spl first: https://github.com/zfsonlinux/zfs/issues/3065
apt-get -y install zfs-dkms

# If you want to boot from ZFS, you'll need zfs-initramfs package too:
apt-get -y install zfs-initramfs

# Add to CLD/
 yes | cp -av ./cld  /usr/local

# Log
ZFS_VERSION=$(modinfo zfs | grep ^version | tr -s ' ')
if [ -z "${ZFS_VERSION}" ]; then
	ZFS_VERSION="ERROR: ZFS installation failed!"
fi
echo "${GV_LOG} * Install instructions: https://github.com/zfsonlinux/zfs/wiki/Debian"
echo "${GV_LOG} * Install zfs-dkms: ${ZFS_VERSION}, DKMS style package. DKMS vs KMOD, see http://zfsonlinux.org/generic-deb.html"
echo "${GV_LOG} * Install zfs-initramfs to be able to boot from ZFS."
echo "${GV_LOG} * Import existing ZFS partitions: zpool import -a"
#echo "${GV_LOG} * Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%."

# History:
	# 0.6.4->0.6.5.1: https://github.com/zfsonlinux/zfs/issues/3841
	# Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%.
	#yes | cp zfs.conf /etc/modprobe.d/ 
	
	# v0.6.5.8: https://github.com/zfsonlinux/zfs/releases/tag/zfs-0.6.5.8

# Reference:
# Tried packages from big to small:
#	apt-get -y install lsb-release build-essential
#	apt-get -y install lsb-release libc6-dev

# Failed:
# apt-get -y install lsb-release linux-headers-$(uname -r)
# apt-get -y install lsb-release linux-libc-dev

# Test: apt-get -y remove debian-zfs zfs-dkms zfsonlinux zfsutils

# Uninstall:
#   apt-get remove -y debian-zfs lsb-release libc6-dev; apt-get -y autoremove