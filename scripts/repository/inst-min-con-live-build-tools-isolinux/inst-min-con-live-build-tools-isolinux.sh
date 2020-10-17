#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# To get isohdpfx.bin and isolinux.bin in order to create isohybrid.
# Note: boot.cat is automatically created
# Install isolinux.
	apt-get -y install isolinux


# Log
	echo "${GV_LOG} * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid."