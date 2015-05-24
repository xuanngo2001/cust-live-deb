#!/bin/bash
set -e


# Build live system.
LIVE_SYSTEM_DIR=chroot

# Copy all scripts to live system.
yes | cp -R scripts ${LIVE_SYSTEM_DIR}/root