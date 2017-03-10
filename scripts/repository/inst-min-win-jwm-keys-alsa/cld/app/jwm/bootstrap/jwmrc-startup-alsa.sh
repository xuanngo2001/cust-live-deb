#!/bin/bash
set -e
# Description: Set ALSA controller name. It is not always Master. It could be something else(e.g. Headphone).


# Set ALSA controller name.
ALSA_CONTROL=$(amixer scontrols | head -n 1 | cut -d "'" -f2)
sed -i "s/Master/${ALSA_CONTROL}/" "${CLD_JWMRC_DIR}/jwmrc-key.xml"