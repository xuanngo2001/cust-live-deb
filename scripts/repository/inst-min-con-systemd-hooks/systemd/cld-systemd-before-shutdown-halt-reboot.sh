#!/bin/bash
set -e
# Description: Before reboot or shutdown, run the following scripts:
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd
echo "$0: $(date -u)" >> /root/cld/boot-sequence.txt
exit 0