#!/bin/bash

# Update manuals.
./update-manual.sh

SYSTEM=$1
# All below is a one-liner.
./build-live.sh && \
  chroot chroot/ /bin/bash -c "cd /root/scripts; \
                               chmod +x scripts-ls.sh; \
                               ./scripts-ls.sh ${SYSTEM}; \
                               chmod +x install.sh; \
                               ./install.sh" && \
  ./mkiso.sh ${SYSTEM}
  
  # Reference:
  # chroot usage: http://stackoverflow.com/a/8157973
