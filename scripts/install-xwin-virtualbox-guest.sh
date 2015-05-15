#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# These packages are in contrib repository.
apt-get -y --force-yes install virtualbox-guest-dkms virtualbox-guest-x11

# Install VBoxGuestAdditions
VBOX_GUEST_ADD_ISO=${GV_SETTINGS_DIR}/VBoxGuestAdditions.iso
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
else
  echo "${GV_LOG} * ERROR: ${VBOX_GUEST_ADD_ISO} is missing. Get it from virtualbox.org."
fi

# Log
echo "${GV_LOG} * Install VirtualBox guest packages."
echo "${GV_LOG} * Install VirtualBox guest additions: Shared folder, Shared Clipboard, Auto window scaling, etc."