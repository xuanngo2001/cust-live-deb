#!/bin/bash
set -e
echo "$0: $(date)" >> /usr/local/cld/log/boot-sequence.log
# Description: After boot, run the following scripts:
#   Note: Internal use only. If you want to add you own custom scripts, add in
#           /root/cld/systemd/user/cld-user-after-boot.sh
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd

MASTER_LOG="/usr/local/cld/log/$(basename "$0").log"
/usr/local/cld/bin/partition-automount.sh     2>&1 | tee -a "${MASTER_LOG}"
/usr/local/cld/bin/partition-swap-enable.sh   2>&1 | tee -a "${MASTER_LOG}"
/usr/local/cld/cld-bootstrap.sh               2>&1 | tee -a "${MASTER_LOG}"

## Add internal scripts below ##


/usr/local/cld/systemd/user/cld-user-after-boot.sh 2>&1 | tee -a  "${MASTER_LOG}" /usr/local/cld/log/cld-user-after-boot.log

