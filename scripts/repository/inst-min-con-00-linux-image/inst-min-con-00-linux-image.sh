#!/bin/bash
set -e

# Requirements:
#   Should work if host kernel=linux-image-3.2.0-4-amd64 and chroot kernel=4.6.0-0.bpo.1-amd64 [uname -r will not work]
#   Should work with signed and unsigned linux-image: linux-image-4.7.0-0.bpo.1-amd64-unsigned, https://packages.debian.org/jessie-backports/linux-image-4.7.0-0.bpo.1-amd64-unsigned

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Always use the latest version of the repository.
apt-get update
#apt-get -y --force-yes dist-upgrade 

# Install basic packages.
apt-get -y --force-yes install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id

# Install linux image.
apt-get -y --force-yes install linux-image-amd64 live-boot 

# Manually create /boot/initrd.img-* for a specific kernel.
# Get _installed_ kernel version.
KERNEL_INSTALLED=$(dpkg-query -W -f='${binary:Package}; ${Status}\n' linux-image-* | grep 'install ok installed' | sed 's/;.*//' | head -n 1 | sed 's/linux-image-//')
KERNEL_VERSION=$(echo "${KERNEL_INSTALLED}" | sed 's/-unsigned//')
#mkinitramfs -d /etc/initramfs-tools -o /boot/initrd.img-${KERNEL_VERSION} ${KERNEL_VERSION} -r /
#update-initramfs -u -t -k ${KERNEL_VERSION}

echo "${GV_LOG} * Reconfigure linux-image-${KERNEL_INSTALLED}."
dpkg-reconfigure linux-image-${KERNEL_INSTALLED}



echo "${GV_LOG} * Generate dbus-uuidgen to /var/lib/dbus/machine-id."
echo "${GV_LOG} * Installed Linux image: ${KERNEL_INSTALLED}."

# Note: From chroot environment, don't use $(uname -r). It returns the host kernel version.
#     dpkg-reconfigure is sufficient. There is no need to run mkinitramfs & update-initramfs.
#       Tried with mix combination of dpkg-reconfigure, mkinitramfs & update-initramfs.