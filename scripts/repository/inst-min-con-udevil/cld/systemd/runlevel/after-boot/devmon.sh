#!/bin/bash
set -e

# Start devmon on startup so that devices are automounted.
#  Note: You need ntfs-3g driver to be able to write on ntfs partition.
cld_log_dir=/usr/local/cld/log
mkdir -p ${cld_log_dir}
/usr/bin/devmon 2>&1 | tee -a ${cld_log_dir}/devmon.log &

