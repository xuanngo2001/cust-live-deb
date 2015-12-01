#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install udevil to get devmon. Need version 0.4.4 or later to support exfat. 
apt-get -t jessie-backports -y --force-yes install udevil

# Insert devmon in startup script.
yes | cp "startup-devmon.sh" "${GV_CLD_ROOT_DIR}"
chmod +x "${GV_CLD_ROOT_DIR}/startup-devmon.sh"
sed -i "/## Insert your script files here ##/a ${GV_CLD_ROOT_DIR}/startup-devmon.sh&" /etc/init.d/startup.sh

# Log
UDEVIL_VER=$(udevil -h | head -n 1)
echo "${GV_LOG} * Install ${UDEVIL_VER}."
echo "${GV_LOG} * Install udevil to auto mount USB devices."
echo "${GV_LOG} * Set devmon to auto start on startup."
echo "${GV_LOG} * Need ntfs-3g driver to be able to read and write ntfs partition."
echo "${GV_LOG} * Need exfat-fuse to be able to read and write exfat partition."

