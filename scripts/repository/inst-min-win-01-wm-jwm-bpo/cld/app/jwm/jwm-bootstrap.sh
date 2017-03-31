#!/bin/bash
set -e
echo "$0: $(date)" >> /usr/local/cld/log/boot-sequence.log
# Description: Commands that will run on JWM startup.

# Ensure that JWM is running before running anything else.
  timeout 5s /bin/bash -c "while ! pgrep Xorg; do sleep 1s; done; sleep 1s"

# Run all scripts.
  log_file="/usr/local/cld/log/$(basename "$0").log"
  script_dir=/usr/local/cld/app/jwm/bootstrap
  script_dir=$(readlink -ev "${script_dir}")
  /usr/local/cld/bin/cld-run-scripts.sh "${script_dir}" 2>&1 | tee -a "${log_file}"