#!/bin/bash
set -e
# Description: Setup chroot environment.
#   -Mount /proc and devices.
#   -More info: http://shallowsky.com/blog/tags/chroot/

export HOME=/root
export LC_ALL=C