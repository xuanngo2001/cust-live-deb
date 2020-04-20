#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."



# Explicitly download dependent packages
	apt-get install -s -y libelf-dev 

# Install required packages.
	apt-get install -y linux-headers-amd64 lsb-release
	
	KERNEL_HEADER=$(dpkg-query -W -f='${binary:Package}\n' linux-image-* | head -n 1 | sed 's/linux-image-//')
	apt-get -y install dkms libc6-dev  build-essential
	apt-get -y install linux-headers-${KERNEL_HEADER}
	apt-get -y install module-assistant
	m-a -i prepare
# ========================================

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

	apt-get -y install file
	for file in zfs-deb/*.deb; do dpkg -i $file; done

# Add to CLD/
	yes | cp -av ./cld  /usr/local
 
# Log
	zfs_version=$(modinfo zfs | grep ^version | tr -s ' ')
	if [ -z "${zfs_version}" ]; then
		zfs_version="ERROR: ZFS installation failed!"
	fi

	echo "${GV_LOG} * Install latest version from upstream."
	echo "${GV_LOG} * This is script is created for Stretch."
	echo "${GV_LOG} * Install zfs-dkms: ${zfs_version}"
