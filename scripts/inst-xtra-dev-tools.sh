#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# To use debconf-set-selections.
apt-get -y --force-yes install debconf-utils

# To get isohdpfx.bin and isolinux.bin in order to create isohybrid.
# Note: boot.cat is automatically created
apt-get -y --force-yes install isolinux 

# To create isohybrid.
apt-get -y --force-yes install xorriso

# To view dependencies of packages. Better package selections.
apt-get -y --force-yes install debtree

# Log
echo "${GV_LOG} * Install debconf-utils to use debconf-set-selections."
echo "${GV_LOG} * Install xorriso to create isohybrid."
echo "${GV_LOG} * Install isolinux to get isohdpfx.bin and isolinux.bin in order to create isohybrid."
echo "${GV_LOG} * Note: boot.cat is automatically created."
echo "${GV_LOG} * Install debtree to view dependencies of packages. Better package selections."
