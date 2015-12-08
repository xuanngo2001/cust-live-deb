#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Clean APT.
apt-get -y --force-yes autoremove
apt-get clean

rm -f /var/lib/dbus/machine-id

# Delete tmp/.
rm -rf /tmp/*

# Unmount
umount -lf /sys /dev/pts /proc || true

## Modify sources.list
# Reinstate default debian repository
cat sources.list >> ${GV_SOURCES_LIST}
# Remove duplicate sources.
cp ${GV_SOURCES_LIST} ${GV_SOURCES_LIST}.orig
sort ${GV_SOURCES_LIST}.orig | uniq > ${GV_SOURCES_LIST}

# Delete local repository.
sed -i '/localhost/d' ${GV_SOURCES_LIST}

# Log
echo "${GV_LOG} * Clean apt-get cache."
echo "${GV_LOG} * rm -rf /tmp/*."
echo "${GV_LOG} * Umount /sys, /dev/pts and /proc."
echo "${GV_LOG} * Add Debian main repositories in sources.list."
echo "${GV_LOG} * Delete local Debian repository from sources.list."

