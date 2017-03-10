#!/bin/bash
set -e
# Description: Commands that will run on JWM startup.
echo "$0: $(date)" >> /root/cld/boot-sequence.txt
### Insert applications that will run on JWM startup here.


find /usr/local/cld/app/jwm/bootstrap/ -name '*.sh' -type f -execdir echo "Executing {}" \; -execdir chmod +x {} \; -execdir {} \;
