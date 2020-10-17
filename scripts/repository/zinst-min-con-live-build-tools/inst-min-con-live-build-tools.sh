#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# To get isohdpfx.bin and isolinux.bin in order to create isohybrid.
# Note: boot.cat is automatically created
	apt-get -y install isolinux

# To create isohybrid.
	apt-get -y install xorriso

# To copy directories.
	apt-get -y install rsync

# To create new squashfs.
	apt-get -y install squashfs-tools

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
	echo "${GV_LOG} * Install xorriso to create isohybrid."
	echo "${GV_LOG} * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid."
	echo "${GV_LOG} * Note: boot.cat is automatically created."
	echo "${GV_LOG} * Install rsync to copy directories."
	echo "${GV_LOG} * Install squashfs-tools to create new squashfs."

