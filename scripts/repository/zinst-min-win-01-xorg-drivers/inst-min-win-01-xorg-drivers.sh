#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install drivers.
	apt-get install -y xserver-xorg-video-all
	apt-get install -y xserver-xorg-video-amdgpu
	apt-get install -y xserver-xorg-video-ati
	apt-get install -y xserver-xorg-video-fbdev
	apt-get install -y xserver-xorg-video-nouveau
	apt-get install -y xserver-xorg-video-radeon
	apt-get install -y xserver-xorg-video-vesa
	apt-get install -y xserver-xorg-video-vmware

# Log
	echo "${GV_LOG} * Install common xorg drivers."
	echo "${GV_LOG} * Install xorg-video-intel to fix: cat /var/log/Xorg.0.log"
	echo "${GV_LOG} * 		Failed to initialize glamor at ScreenInit() time."
	echo "${GV_LOG} * 		Boot from virtualbox is working fine but boot from HP, X server not loaded."	
