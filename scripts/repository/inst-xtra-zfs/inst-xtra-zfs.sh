#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Temporarily use the original update-initramfs.
###rm -f /usr/sbin/update-initramfs
###ln -s /usr/sbin/update-initramfs.orig.initramfs-tools /usr/sbin/update-initramfs

# Install required packages.
apt-get -y --force-yes install lsb-release libc6-dev

# Install ZFS
ZFS_REPO_KEY_DEB=zfsonlinux_6_all.deb
ZFS_REPO_KEY_DEB_SIZE=$(GF_SIZE_OF ${ZFS_REPO_KEY_DEB})
dpkg -i ${ZFS_REPO_KEY_DEB}
apt-get update
apt-get -y --force-yes install debian-zfs
rm -f ${ZFS_REPO_KEY_DEB}

# Change default behavior: Don't allow the last 1.6% of space in the pool instead of 3.2%.
#yes | cp zfs.conf /etc/modprobe.d/ 

# Revert back to use live-update-initramfs.
###rm -f /usr/sbin/update-initramfs
###ln -s /bin/live-update-initramfs /usr/sbin/update-initramfs

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