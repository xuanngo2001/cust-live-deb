#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

	apt-get -y install file
	for file in zfs-deb/*.deb; do dpkg -i $file; done

# Log
	zfs_version=$(modinfo zfs | grep ^version | tr -s ' ')
	if [ -z "${zfs_version}" ]; then
		zfs_version="ERROR: ZFS installation failed!"
	fi

	echo "${GV_LOG} * Install latest version from upstream."
	echo "${GV_LOG} * This is script is created for Stretch."
	echo "${GV_LOG} * Install zfs-dkms: ${zfs_version}"
