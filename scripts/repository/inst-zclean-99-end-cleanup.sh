#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

# Back to the root path.
cd /

# Clean APT.
apt-get -y --force-yes autoremove
apt-get clean

rm /var/lib/dbus/machine-id

# Delete tmp/.
rm -rf /tmp/*

# Unmount
umount /sys /dev/pts
umount -lf /proc

## Modify sources.list
# Reinstate default debian repository
SOURCES_LIST=/etc/apt/sources.list
cat ${GV_SETTINGS_DIR}/sources.list >> ${SOURCES_LIST}

# Delete local repository.
sed -i '/localhost/d' ${SOURCES_LIST}

# Log
echo "${GV_LOG} * Clean apt-get cache."
echo "${GV_LOG} * rm -rf /tmp/*."
echo "${GV_LOG} * Umount /sys, /dev/pts and /proc."
echo "${GV_LOG} * Add Debian main repositories in sources.list."
echo "${GV_LOG} * Delete local Debian repository from sources.list."

