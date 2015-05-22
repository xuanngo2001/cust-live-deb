#!/bin/bash

SYSTEM=$1
./build-live.sh && chroot chroot/ /bin/bash -c "cd /root/scripts; chmod +x install.sh; ./install.sh ${SYSTEM}" && ./mkiso.sh