#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install lsb-release
dpkg -i ${GV_BINARY_DIR}/zfsonlinux_6_all.deb
apt-get -y --force-yes install debian-zfs


# Log
echo "${GV_LOG} * Install lsb-release."
echo "${GV_LOG} * Add zfsonlinux repository to /etc/apt/sources.list.d/zfsonlinux.list."
echo "${GV_LOG} * Add GPG key to /etc/apt/trusted.gpg.d/zfsonlinux.gpg."
echo "${GV_LOG} * Install debian-zfs."