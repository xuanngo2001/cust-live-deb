#!/bin/bash
set -e
set -o pipefail
# Description: Set ALSA controller name. It is not always Master. It could be something else(e.g. Headphone).

# CLD_ROOT_DIR should be equal to ${GV_CLD_ROOT_DIR}.
CLD_ROOT_DIR=/root/cld

# Set ALSA controller name.
ALSA_CONTROL=$(amixer scontrols | head -n 1 | cut -d "'" -f2)
sed -i "s/Master/${ALSA_CONTROL}/" "${CLD_ROOT_DIR}/jwmrc-key.xml"