#!/bin/bash
set -e
echo -e "$0: $(date)\n" >> /root/cld/boot-sequence.txt
# Description: Before reboot or shutdown, run the following scripts:
# Reference: 
#   -http://unix.stackexchange.com/a/41756
#   -https://wiki.archlinux.org/index.php/systemd
exit 1