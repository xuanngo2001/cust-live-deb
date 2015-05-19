#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# To use debconf-set-selections.
apt-get -y --force-yes install debconf-utils

# To get isohdpfx.bin, isolinux.bin, boot.cat in order to create isohybrid.
apt-get -y --force-yes install isolinux 

# To create isohybrid.
apt-get -y --force-yes install xorriso

# Log
echo "${GV_LOG} * Install debconf-utils so you can use debconf-set-selections."
echo "${GV_LOG} * Install xorriso so you can create isohybrid."
echo "${GV_LOG} * Install isolinux to get isohdpfx.bin, isolinux.bin in order to create isohybrid."