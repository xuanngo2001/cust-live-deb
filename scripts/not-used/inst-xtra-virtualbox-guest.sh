#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.


SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install required packages to compile VirtualBox guest additions.
PKGS_LIST="virtualbox-guest-dkms virtualbox-guest-utils virtualbox-guest-x11"
apt-get -y --force-yes install ${PKGS_LIST}


# Log
echo "${GV_LOG} * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc."
echo "${GV_LOG} * Assumed packages installed: bzip2 & Xserver installed."
VBOX_GUEST_ADD_VER=$(lsmod | grep -io vboxguest | xargs modinfo | grep -iw version)
echo "${GV_LOG} * VirtualBox guest additions ${VBOX_GUEST_ADD_VER} installed."

# REJECTION
# This mix with inst-xtra-zfs.sh creates bigger size than using inst-xtra-virtualbox-guest-from-scratch.sh.
#  * Running inst-xtra-virtualbox-guest.sh ...
#    * After this operation, 85.4 MB of additional disk space will be used.
#    * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc.
#    * Assumed packages installed: bzip2 & Xserver installed.
#    * VirtualBox guest additions  installed.
#    * Total size = 1850644K. Space Used = 94804K.
#
#  * Running inst-xtra-zfs.sh ...
#    * After this operation, 99.3 kB of additional disk space will be used.
#    * After this operation, 75.3 MB of additional disk space will be used.
#    * Install lsb-release.
#    * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list.
#    * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg.
#    * Install debian-zfs.
#    * Delete ./settings/binary/zfsonlinux_6_all.deb[1992K].
#    * Total size = 2001816K. Space Used = 151172K.