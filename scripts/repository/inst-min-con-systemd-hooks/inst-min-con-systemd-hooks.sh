#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

yes | cp -a systemd/  ${GV_CLD_ROOT_DIR}

#Register unit files
yes | cp -a systemd/*.service /etc/systemd/system/

systemctl enable cld-systemd-start-stop.service

# Log
echo "${GV_LOG} * Add systemd hook scripts."