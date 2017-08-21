#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install packages for cld-dd-usb:
  apt-get -y install parted     # partprobe
  apt-get -y install util-linux # partx
  apt-get -y install udev       # udevadm

chmod +x ./cld/bin/*.sh
yes | cp -av ./cld/ /usr/local/

yes | cp -av ./cld/bin/cld-dpkg-list.sh /usr/local/bin