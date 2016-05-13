#!/bin/bash
set -e

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Always use the latest version of the repository.
apt-get update
apt-get -y --force-yes dist-upgrade 

# Install basic packages.
apt-get -y --force-yes install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id

# Install linux image.
apt-get -y --force-yes install linux-image-amd64 live-boot


# Get _installed_ kernel version.
KERNEL_VERSION=$(dpkg-query -W -f='${binary:Package}\n' linux-image-* | head -n 1 | sed 's/linux-image-//')


# Manually create /boot/initrd.img-* for a specific kernel.
mkinitramfs -d /etc/initramfs-tools -o /boot/initrd.img-${KERNEL_VERSION} ${KERNEL_VERSION} -r /

echo "${GV_LOG} * Generate dbus-uuidgen to /var/lib/dbus/machine-id."
echo "${GV_LOG} * Install Linux image: ${KERNEL_VERSION}."

# Note: Don't use $(uname -r). It returns the host kernel version.
# CLDS: * mkinitramfs -d /etc/initramfs-tools -o /boot/initrd.img-4.5.0-0.bpo.1-amd64  -r /
# WARNING: missing /lib/modules/3.16.0-4-amd64
# Ensure all necessary drivers are built into the linux image!
# depmod: ERROR: could not open directory /lib/modules/3.16.0-4-amd64: No such file or directory
# depmod: FATAL: could not search modules: No such file or directory