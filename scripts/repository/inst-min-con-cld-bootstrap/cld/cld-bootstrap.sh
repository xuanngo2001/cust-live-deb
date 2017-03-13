#!/bin/bash
set -e
# Description: Run all scripts in bootstrap/ Cust-Live-Deb.

find /usr/local/cld/bootstrap/ -name '*.sh' -type f -execdir echo "Executing {}" \; -execdir chmod +x {} \; -execdir {} \; | tee -a "${CLD_LOG_DIR}/boot-sequence.log" "${CLD_LOG_DIR}/$0.log"
