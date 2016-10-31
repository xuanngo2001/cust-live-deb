#!/bin/bash
set -e
# Description: Setup chroot environment.
#   -Mount /proc and devices.
#   -More info: http://shallowsky.com/blog/tags/chroot/

mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts
export HOME=/root
export LC_ALL=C