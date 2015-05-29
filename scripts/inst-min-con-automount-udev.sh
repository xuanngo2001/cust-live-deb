#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

cp ${GV_SETTINGS_DIR}/10-udev-media-automount.rules /etc/udev/rules.d/

# Log
echo "${GV_LOG} * Install udev to auto mount all devices."

# Note:
# To restart service, run 
#   service udev restart
# https://www.raspberrypi.org/forums/viewtopic.php?f=91&t=10711
# http://kissmyarch.blogspot.be/2011/10/usb-automount.html
# http://www.reactivated.net/writing_udev_rules.html
# https://wiki.archlinux.org/index.php/Udev#Mount_under_.2Fmedia.3B_use_partition_label_if_present.3B_support_user_un-mounting
# https://bbs.archlinux.org/viewtopic.php?id=103890

# Full script explained: http://superuser.com/a/64970

