#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


rm -f /var/lib/dbus/machine-id

# Delete tmp/.
rm -rf /tmp/*

# Unmount
umount -lf /sys /dev/pts /proc || true



# Log
echo "${GV_LOG} * rm -rf /tmp/*."
echo "${GV_LOG} * Umount /sys, /dev/pts and /proc."


