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

