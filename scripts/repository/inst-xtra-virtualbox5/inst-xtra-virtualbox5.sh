#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install Virtualbox source repository
GF_ADD_SOURCE_LIST "deb http://download.virtualbox.org/virtualbox/debian jessie contrib"
apt-key add oracle_vbox.asc
apt-get update

# Install required packages to compile VirtualBox.
PKGS_LIST="dkms libc6-dev linux-headers-$(uname -r)"
apt-get -y --force-yes install ${PKGS_LIST}

Install VirtualBox
apt-get -y --force-yes install virtualbox-5.0


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
