#!/bin/bash
set -e

# Set permission.
SERVICE_NAME=cld-systemd-start-stop.service
chmod 664 "${SERVICE_NAME}"

# Register unit files
yes | cp -av *.service /etc/systemd/system/

systemctl enable "${SERVICE_NAME}"

journalctl --no-pager | grep cld

systemctl list-jobs || true

systemctl cat "${SERVICE_NAME}"

cp -av systemd-test-on-shutdown.sh runlevel/before-shutdown/


