#!/bin/bash
set -e
set -o pipefail

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Always use the latest version of the repository.
apt-get update
apt-get -y --force-yes dist-upgrade 

# Install basic packages.
apt-get -y --force-yes install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id
apt-get -y --force-yes install linux-image-amd64 live-boot


# Create /boot/initrd.img-*
mkinitramfs -d /etc/initramfs-tools -o /boot/initrd.img-$(uname -r)  -r /

echo "${GV_LOG} * Mount /proc, /sys and /dev/pts."
echo "${GV_LOG} * Generate dbus-uuidgen to /var/lib/dbus/machine-id."
echo "${GV_LOG} * Install Linux image: $(uname -r)."

