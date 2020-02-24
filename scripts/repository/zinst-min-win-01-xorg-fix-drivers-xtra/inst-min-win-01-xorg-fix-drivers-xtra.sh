#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 


	apt-get -y install xserver-xorg-video-all

# Install Recommended packages.
	apt-get -y install xserver-xorg-input-wacom xserver-xorg-video-intel xserver-xorg-video-qxl

apt-get -y install xserver-xorg-video-amdgpu
apt-get -y install xserver-xorg-video-ati
apt-get -y install xserver-xorg-video-cirrus
apt-get -y install xserver-xorg-video-fbdev
apt-get -y install xserver-xorg-video-intel
#apt-get -y install xserver-xorg-video-mach64
apt-get -y install xserver-xorg-video-mga
apt-get -y install xserver-xorg-video-neomagic
apt-get -y install xserver-xorg-video-nouveau
apt-get -y install xserver-xorg-video-openchrome
apt-get -y install xserver-xorg-video-qxl
#apt-get -y install xserver-xorg-video-r128
apt-get -y install xserver-xorg-video-radeon
apt-get -y install xserver-xorg-video-savage
apt-get -y install xserver-xorg-video-sisusb
apt-get -y install xserver-xorg-video-tdfx
apt-get -y install xserver-xorg-video-trident
apt-get -y install xserver-xorg-video-vesa
apt-get -y install xserver-xorg-video-vmware


# Log
	echo "${GV_LOG} * Installed xtra driver. Try to fix mpv playing freeze."
