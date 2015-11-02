#!/bin/bash
set -e

# Set ALSA controller name.
ALSA_CONTROL=$(amixer scontrols | head -n 1 | cut -d "'" -f2)
sed -i "s/Master/${ALSA_CONTROL}/" /root/jwmrc-key.xml