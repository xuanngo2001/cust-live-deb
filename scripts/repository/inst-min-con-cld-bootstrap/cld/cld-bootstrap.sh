#!/bin/bash
set -e
# Description: Run all scripts in bootstrap/ Cust-Live-Deb.

find /usr/local/cld/bootstrap/ -name '*.sh' -type f -execdir echo "Executing {}" \; -execdir chmod +x {} \; -execdir {} \;
