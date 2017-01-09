#!/bin/bash
set -e

GV_CLD_ROOT_DIR=/root/cld/

yes | cp -av systemd/  ${GV_CLD_ROOT_DIR}

#Register unit files
yes | cp -av systemd/*.service /etc/systemd/system/

SERVICE_NAME=cld-systemd-start-stop.service
systemctl enable "${SERVICE_NAME}"

systemctl list-unit-files --no-pager | grep cld

systemctl cat "${SERVICE_NAME}"