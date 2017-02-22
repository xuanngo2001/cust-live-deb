#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install Virtualbox source repository
GF_ADD_SOURCE_LIST live "deb http://download.virtualbox.org/virtualbox/debian jessie contrib"
apt-key add oracle_vbox_2016.asc
apt-get update

# Install required packages to compile VirtualBox.
KERNEL_VERSION=$(dpkg-query -W -f='${binary:Package}\n' linux-image-* | head -n 1 | sed 's/linux-image-//')
PKGS_LIST="dkms libc6-dev linux-libc-dev linux-headers-${KERNEL_VERSION}"
apt-get -y --force-yes install ${PKGS_LIST}

# Explicitly download dependent packages.
apt-get -d -y --force-yes install libqt4-opengl

# Install VirtualBox
apt-get -y --force-yes install virtualbox-5.1


# Clean up
apt-get -y --force-yes purge ${PKGS_LIST}
apt-get -y --force-yes autoremove

# Log
VBOX_VER=$(VBoxManage --version)
if [ -z "${VBOX_VER}" ]; then
  VBOX_VER="Error: ${SCRIPT_NAME} installation failed!"
fi
echo "${GV_LOG} * Install ${PKGS_LIST// /, } to compile VirtualBox."
echo "${GV_LOG} * Install VirtualBox ${VBOX_VER}."

# Reference:
#   -https://www.virtualbox.org/wiki/Linux_Downloads
#   -https://www.virtualbox.org/download/oracle_vbox.asc
#   -wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc
