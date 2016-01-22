#!/bin/bash
set -e
set -o pipefail

# Start devmon on startup so that devices are automounted.
#  Note: You need ntfs-3g driver to be able to write on ntfs partition.
SHM_LOG=/dev/shm/log
mkdir -p ${SHM_LOG}
/usr/bin/devmon 2>&1 | tee -a ${SHM_LOG}/devmon.log &

