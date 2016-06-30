#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.


SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add jessie-backports source.
GF_ADD_SOURCE_LIST live "deb http://http.debian.net/debian jessie-backports main contrib non-free"
apt-get update

# Install VirtualBox Guest Additions.
apt-get -t jessie-backports -y --force-yes install virtualbox-guest-x11

# Log
VBOXGUEST_ADD_VERSION=$(modinfo vboxguest | grep ^version | tr -s ' ')
if [ -z "${VBOXGUEST_ADD_VERSION}" ]; then
	VBOXGUEST_ADD_VERSION="ERROR: VirtualBox guest additions installation failed!"
fi
echo "${GV_LOG} * Install VirtualBox guest additions to Shared folder/clipboard, auto window scaling, etc."
echo "${GV_LOG} * VirtualBox guest additions installed: ${VBOXGUEST_ADD_VERSION}."
