#!/bin/bash
set -e

GV_CLD_ROOT_DIR=/root/cld/

# Set permission.
SERVICE_NAME=cld-systemd-start-stop.service
chmod 664 "./systemd/${SERVICE_NAME}"
chmod +x ./systemd/*.sh

# Copy to /root/cld/
yes | cp -av ./systemd/  ${GV_CLD_ROOT_DIR}

#Register unit files
yes | cp -av systemd/*.service /etc/systemd/system/

systemctl enable "${SERVICE_NAME}"