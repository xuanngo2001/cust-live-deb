#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install gnome-disk-utility to partition and mount disks.
apt-get -y install gnome-disk-utility

# Insert gnome-disk-utility menu in Administration.
sed -i "/Administration\">/ r jwmrc-menus-adm-gnome-disk-utility.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Install Partition Manager: gnome-disk-utility."
echo "${GV_LOG} * Run: gnome-disks."
echo "${GV_LOG} * Insert gnome-disk-utility menu in Administration."

# Reference
# Tutorial: http://askubuntu.com/a/185827


#  * Running inst-std-system-disk-manager.sh ...
#    * After this operation, 14.3 MB of additional disk space will be used.
#    * Install Auto Mount Partition Manager: Disk Manager.
#    * Insert disk-manager menu in Administration.
#    * Disk size = 3503468K. Space Used = 24548K.
#  * Running inst-std-system-gnome-disk-utility.sh ...
#    * After this operation, 11.1 MB of additional disk space will be used.
#    * Install Partition Manager: gnome-disk-utility.
#    * Disk size = 3509744K. Space Used = 6276K.
#  * Running inst-std-system-gparted.sh ...
#    * After this operation, 17.3 MB of additional disk space will be used.
#    * Install Partition Manager: gparted.
#    * Insert gparted menu in Administration.
#    * Disk size = 3525672K. Space Used = 15928K.