#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install Suggested packages.
	apt-get -y install xserver-xorg-video-r128 xserver-xorg-video-mach64

# Install Recommended packages.
	apt-get -y install xserver-xorg-input-wacom xserver-xorg-video-intel xserver-xorg-video-qxl

# Log
	echo "${GV_LOG} * Installed xtra driver. Try to fix mpv playing freeze."
