#!/bin/bash
set -e
# Description: Change MAC address of all network interface 

while IFS='' read -r IFACE_NAME || [[ -n "$IFACE_NAME" ]]; do
  ip link set "${IFACE_NAME}" down
  /usr/bin/macchanger -e "${IFACE_NAME}"
  ip link set "${IFACE_NAME}"  up
done < <( ip address | grep '^[0-9]' | grep -vF 'lo: ' | sed 's/^[0-9]*://' | cut -d':' -f1 | xargs | tr d' ' '\n' )