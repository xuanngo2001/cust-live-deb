#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

kernel_header=$(dpkg-query -W -f='${binary:Package}\n' linux-image-* | head -n 1 | sed 's/linux-image-//')

# Install latest version from upstream.
	apt-get update
	apt-get -y install build-essential autoconf automake libtool gawk alien 
	apt-get -y install fakeroot
	apt-get -y install dkms libblkid-dev uuid-dev libudev-dev libssl-dev
	apt-get -y install zlib1g-dev libaio-dev libattr1-dev libelf-dev 
	apt-get -y install linux-headers-${kernel_header} 
	apt-get -y install python3 python3-dev python3-setuptools python3-cffi libffi-dev
	
	# Change the URL to the latest version.
	wget https://github.com/openzfs/zfs/releases/download/zfs-0.8.3/zfs-0.8.3.tar.gz
	tar -vxzf zfs-0.8.3.tar.gz
	cd zfs-0.8.3
	
	./configure --with-config=srpm
	make -j1 pkg-utils deb-dkms
	
	
	for file in *.deb; do dpkg -i $file; done

# Log

	zfs_version=$(modinfo zfs | grep ^version | tr -s ' ')
	if [ -z "${zfs_version}" ]; then
		zfs_version="ERROR: ZFS installation failed!"
	fi

	echo "${GV_LOG} * Install latest version from upstream."
	echo "${GV_LOG} * This is script is created for Stretch."
	echo "${GV_LOG} * Install zfs-dkms: ${zfs_version}"
