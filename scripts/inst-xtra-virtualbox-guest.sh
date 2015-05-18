#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.


SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install required packages to compile VirtualBox guest additions.
PKGS_LIST="dkms build-essential linux-headers-$(uname -r)"
apt-get -y --force-yes install ${PKGS_LIST}


# Install VBoxGuestAdditions
VBOX_GUEST_ADD_ISO=${GV_BINARY_DIR}/VBoxGuestAdditions.iso
VBOX_GUEST_ADD_MNT_DIR=/tmp/VBoxGuestAdditions
if [ -f ${VBOX_GUEST_ADD_ISO} ]
then
  rm -rf ${VBOX_GUEST_ADD_MNT_DIR}
  mkdir ${VBOX_GUEST_ADD_MNT_DIR}
  mount -o loop,ro ${VBOX_GUEST_ADD_ISO} ${VBOX_GUEST_ADD_MNT_DIR}
  cd ${VBOX_GUEST_ADD_MNT_DIR}
  ./VBoxLinuxAdditions.run
  cd -
  umount ${VBOX_GUEST_ADD_MNT_DIR}
  rm -f ${VBOX_GUEST_ADD_ISO}
else
  echo "${GV_LOG} * ERROR: ${VBOX_GUEST_ADD_ISO} is missing. Get it from virtualbox.org."
fi


# Clean up
apt-get -y --force-yes purge ${PKGS_LIST}
apt-get -y --force-yes autoremove


# Log
echo "${GV_LOG} * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc."
echo "${GV_LOG} * Assumed packages installed: bzip2 & Xserver installed."
echo "${GV_LOG} * Install ${PKGS_LIST} to compile VirtualBox guest additions."
VBOX_GUEST_ADD_VER=$(lsmod | grep -io vboxguest | xargs modinfo | grep -iw version)
echo "${GV_LOG} * VirtualBox guest additions ${VBOX_GUEST_ADD_VER} installed."
echo "${GV_LOG} * Delete ${VBOX_GUEST_ADD_ISO}. Space used could be negative due to this deletion."

