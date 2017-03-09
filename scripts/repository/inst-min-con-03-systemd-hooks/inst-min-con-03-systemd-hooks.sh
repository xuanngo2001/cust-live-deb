#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Set permission.
SERVICE_NAME=cld-systemd-start-stop.service
chmod 664 "./cld/systemd/${SERVICE_NAME}"
chmod +x ./cld/systemd/*.sh

# Copy to /usr/local
yes | cp -av ./cld/  /usr/local

#Register unit files
yes | cp -av ./cld/systemd/*.service /etc/systemd/system/

systemctl enable "${SERVICE_NAME}"

# Log
echo "${GV_LOG} * Add systemd hook scripts."