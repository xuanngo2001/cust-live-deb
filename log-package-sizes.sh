#!/bin/bash
# Description: Log packages sizes

INSTALL_SIZE_HISTORY=install-size-history.txt
cat ./chroot/root/scripts/install.size >> ${INSTALL_SIZE_HISTORY}
echo "${INSTALL_SIZE_HISTORY} updated.
