#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Remove nouveau driver first.
	apt-get -y --purge remove xserver-xorg-video-nouveau

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 
	apt-get install -s -y nvidia-installer-cleanup
	apt-get install -s -y nvidia-legacy-check
	apt-get install -s -y nvidia-driver-libs
	apt-get install -s -y nvidia-driver-bin
	apt-get install -s -y xserver-xorg-video-nvidia
	apt-get install -s -y nvidia-vdpau-driver
	apt-get install -s -y nvidia-alternative
	apt-get install -s -y nvidia-kernel-dkms
	apt-get install -s -y nvidia-kernel-430.64
	apt-get install -s -y nvidia-support
	apt-get install -s -y glx-alternative-mesa
	apt-get install -s -y glx-alternative-nvidia
	apt-get install -s -y glx-diversions
	apt-get install -s -y libegl-nvidia0
	apt-get install -s -y libgl1-nvidia-glvnd-glx
	
	apt-get install -s -y libglx-nvidia0
	apt-get install -s -y libnvidia-eglcore
	apt-get install -s -y libnvidia-glcore
	apt-get install -s -y libnvidia-ml1
	apt-get install -s -y nvidia-alternative
	apt-get install -s -y nvidia-driver
	
	apt-get install -s -y nvidia-driver-bin
	apt-get install -s -y nvidia-driver-libs
	apt-get install -s -y nvidia-egl-common
	apt-get install -s -y nvidia-egl-icd
	apt-get install -s -y nvidia-installer-cleanup
	
	apt-get install -s -y nvidia-kernel-common
	apt-get install -s -y nvidia-kernel-dkms
	apt-get install -s -y nvidia-kernel-support
	apt-get install -s -y nvidia-legacy-check
	apt-get install -s -y nvidia-modprobe
	
	apt-get install -s -y nvidia-support
	apt-get install -s -y nvidia-vdpau-driver
	apt-get install -s -y update-glx
	apt-get install -s -y xserver-xorg-video-nvidia


# Install nvidia-driver.
	apt-get -y install nvidia-driver


# Log
	echo "${GV_LOG} * Install nvidia-driver to fix freeze of nouveau driver: Nouveau system freeze fifo: SCHED_ERROR 0a [CTXSW_TIMEOUT]"
