#!/bin/bash
set -e
echo "$0: $(date)\n" >> /usr/local/cld/log/boot-sequence.log
# Description: Before reboot/halt/shutdown, run the following scripts:
#   Note: Internal use only. If you want to add you own custom scripts, add in
#           /root/cld/systemd/user/cld-user-before-shutdown-halt-reboot.sh
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd

MASTER_LOG="/usr/local/cld/log/$(basename "$0").log"

/usr/local/cld/systemd/user/cld-user-before-shutdown-halt-reboot.sh 2>&1 | tee -a "${MASTER_LOG}" /usr/local/cld/log/cld-user-before-shutdown-halt-reboot.log