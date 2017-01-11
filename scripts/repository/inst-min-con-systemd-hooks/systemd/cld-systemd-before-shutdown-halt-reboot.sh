#!/bin/bash
set -e
echo "$0: $(date)\n" >> /root/cld/boot-sequence.txt
# Description: Before reboot/halt/shutdown, run the following scripts:
#   Note: Internal use only. If you want to add you own custom scripts, add in
#           /root/cld/systemd/user/cld-user-before-shutdown-halt-reboot.sh
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd

MASTER_LOG="$(basename "$0").log"


/root/cld/systemd/user/cld-user-before-shutdown-halt-reboot.sh | tee -a "${MASTER_LOG}" /root/cld/systemd/user/cld-user-before-shutdown-halt-reboot.log