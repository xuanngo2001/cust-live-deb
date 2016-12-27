#!/bin/bash
set -e

# Requirements:
#   Should work if host kernel=linux-image-3.2.0-4-amd64 and chroot kernel=4.6.0-0.bpo.1-amd64 [uname -r will not work]
#   Should work with signed and unsigned linux-image: linux-image-4.7.0-0.bpo.1-amd64-unsigned, https://packages.debian.org/jessie-backports/linux-image-4.7.0-0.bpo.1-amd64-unsigned

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Always use the latest version of the repository.
apt-get update
#apt-get -y --force-yes dist-upgrade # Will cause boot issues.

# Install basic packages.
apt-get -y --force-yes install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id

# Install linux image.
apt-get -y --force-yes install linux-image-amd64 live-boot 

# K3.16
#apt-get -y --force-yes install busybox

# Get _installed_ kernel version.
KERNEL_INSTALLED=$(dpkg-query -W -f='${binary:Package}; ${Status}\n' linux-image-* | grep 'install ok installed' | sed 's/;.*//' | head -n 1 | sed 's/linux-image-//')
KERNEL_VERSION=$(echo "${KERNEL_INSTALLED}" | sed 's/-unsigned//')

echo "${GV_LOG} * Reconfigure linux-image-${KERNEL_INSTALLED}."
dpkg-reconfigure linux-image-${KERNEL_INSTALLED}

# Manually create /boot/initrd.img-* for a specific kernel.
#mkinitramfs -d /etc/initramfs-tools -o /boot/initrd.img-${KERNEL_VERSION} ${KERNEL_VERSION} -r /
#update-initramfs -u -t -k ${KERNEL_VERSION}
INITRD_FILE=$(find /boot -name 'initrd.img-*')
if [ -z "${INITRD_FILE}" ]; then
  echo "${GV_LOG} * Warning: /boot/initrd.img-* doesn't exist. Manually creating it."
  mkinitramfs -d /etc/initramfs-tools -o /boot/initrd.img-${KERNEL_VERSION} ${KERNEL_VERSION} -r /
fi


# Remove /vmlinuz.old & /initrd.img.old symbolic links.
rm -f /vmlinuz.old
rm -f /initrd.img.old

# Log files in /boot/
ls -l /boot/

# Log
echo "${GV_LOG} * Generate dbus-uuidgen to /var/lib/dbus/machine-id."
echo "${GV_LOG} * Installed Linux image: ${KERNEL_INSTALLED}."

# Note: From chroot environment, don't use $(uname -r). It returns the host kernel version.
#     dpkg-reconfigure is sufficient. There is no need to run mkinitramfs & update-initramfs.
#       Tried with mix combination of dpkg-reconfigure, mkinitramfs & update-initramfs.