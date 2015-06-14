#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts
export HOME=/root
export LC_ALL=C

apt-get update
apt-get -y --force-yes install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id
apt-get -y --force-yes install linux-image-amd64 live-boot

# Set to skip installing recommended packages
APT_CONF_SKIP_REC_PKG=/etc/apt/apt.conf.d/skip-recommended-packages
echo 'APT::Install-Recommends "false"; APT::Install-Suggests "false";' >> ${APT_CONF_SKIP_REC_PKG}

echo "${GV_LOG} * Mount /proc, /sys and /dev/pts."
echo "${GV_LOG} * Generate dbus-uuidgen to /var/lib/dbus/machine-id."
echo "${GV_LOG} * Install Linux image."
echo "${GV_LOG} * Set APT to skip installing recommended packages."

