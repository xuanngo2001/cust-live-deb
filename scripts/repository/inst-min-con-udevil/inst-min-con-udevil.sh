#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

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
echo "${GV_LOG} * You need ntfs-3g driver to be able to write on ntfs partition."

