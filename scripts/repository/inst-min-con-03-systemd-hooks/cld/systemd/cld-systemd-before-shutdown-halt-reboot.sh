#!/bin/bash
set -e
echo "$0: $(date)\n" >> /usr/local/cld/log/boot-sequence.log
# Description: Before reboot/halt/shutdown, run the following scripts:
#   Note: Internal use only. If you want to add you own custom scripts, add in
#           /root/cld/systemd/user/cld-user-before-shutdown-halt-reboot.sh
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd

log_file="/usr/local/cld/log/$(basename "$0").log"

scripts_dir=/usr/local/cld/systemd/runlevel/before-shutdown
/usr/local/cld/bin/cld-run-scripts.sh "${scripts_dir}" 2>&1 | tee -a "${log_file}"