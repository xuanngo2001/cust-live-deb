#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install udevil to get devmon.
apt-get -y --force-yes install udevil 


# Insert devmon in startup script.
yes | cp "startup-devmon.sh" "${GV_CLD_ROOT_DIR}"
chmod +x "${GV_CLD_ROOT_DIR}/startup-devmon.sh"
sed -i "/## Insert your script files here ##/a ${GV_CLD_ROOT_DIR}/startup-devmon.sh&" /etc/init.d/startup.sh

# Log
echo "${GV_LOG} * Install udevil to auto mount USB devices."
echo "${GV_LOG} * Set devmon to auto start on startup."
echo "${GV_LOG} * Need ntfs-3g driver to be able to read and write ntfs partition."
echo "${GV_LOG} * Need exfat-fuse to be able to read and write exfat partition."

# REJECTION: Too old, doesn't support exfat. Need version 0.4.4 or later.
#  * Running inst-min-con-udevil.sh ...
#    * After this operation, 500 kB of additional disk space will be used.
#    * Install udevil to auto mount USB devices.
#    * Set devmon to auto start on startup.
#    * You need ntfs-3g driver to be able to write on ntfs partition.
#    * Disk size = 1117204K. Space Used = 328K.