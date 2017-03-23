#!/bin/bash
set -e
echo "$0: $(date)\n" >> /usr/local/cld/log/boot-sequence.log
# Description: Commands that will run on JWM startup.


log_file="/usr/local/cld/log/$(basename "$0").log"

script_dir=/usr/local/cld/app/jwm/bootstrap
script_dir=$(readlink -ev "${script_dir}")
/usr/local/cld/bin/cld-run-scripts.sh "${scripts_dir}" 2>&1 | tee -a "${log_file}"