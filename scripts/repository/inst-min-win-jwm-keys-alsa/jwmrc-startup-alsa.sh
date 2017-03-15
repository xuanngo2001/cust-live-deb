#!/bin/bash
set -e
# Description: Set ALSA controller name. It is not always Master. It could be something else(e.g. Headphone).

# CLD_ROOT_DIR should be equal to ${GV_CLD_ROOT_DIR}.
echo "alsa: [${CLD_JWMRC_DIR}]"

# Set ALSA controller name.
ALSA_CONTROL=$(amixer scontrols | head -n 1 | cut -d "'" -f2)
sed -i "s/Master/${ALSA_CONTROL}/" "${CLD_JWMRC_DIR}/jwmrc-key.xml"