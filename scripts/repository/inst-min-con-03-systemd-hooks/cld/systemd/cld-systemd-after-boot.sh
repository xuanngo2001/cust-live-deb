#!/bin/bash
set -e
echo "$0: $(date)" >> /usr/local/cld/log/boot-sequence.log
# Description: After boot, run the following scripts:
#   Note: Internal use only. If you want to add you own custom scripts, add
#           your scripts in /root/cld/systemd/user/after-boot/
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd

log_file="/usr/local/cld/log/$(basename "$0").log"

# Core CLD use only.
scripts_dir=/usr/local/cld/systemd/runlevel/after-boot
/usr/local/cld/bin/cld-run-scripts.sh "${scripts_dir}" 2>&1 | tee -a "${log_file}"

# Users custom scripts. To prevent overwrite on upgrade. Used when doing custom CLD.
scripts_dir=/usr/local/cld/systemd/user/after-boot
/usr/local/cld/bin/cld-run-scripts.sh "${scripts_dir}" 2>&1 | tee -a "${log_file}"

