#!/bin/bash
set -e
# Description: Commands that will run on JWM startup.

find /usr/local/cld/app/jwm/bootstrap/ -name '*.sh' -type f -execdir echo "Executing {}" \; -execdir chmod +x {} \; -execdir {} \; 2>&1 | tee -a "${CLD_LOG_DIR}/boot-sequence.log" "${CLD_LOG_DIR}/$0.log"
