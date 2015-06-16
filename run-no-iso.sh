#!/bin/bash

SYSTEM=$1
# All below is a one-liner.
./build-live.sh && \
  chroot chroot/ /bin/bash -c "cd /root/scripts; \
                               chmod +x scripts-ls.sh; \
                               ./scripts-ls.sh ${SYSTEM}; \
                               chmod +x install.sh; \
                               ./install.sh"