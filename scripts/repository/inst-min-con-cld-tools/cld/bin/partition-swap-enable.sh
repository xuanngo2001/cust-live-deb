#!/bin/bash
set -e
# Description: Turn on swap partition.

SWAP_DEVICE=$(blkid | grep -F 'TYPE="swap"' | cut -d':' -f1)

if [ -z "${SWAP_DEVICE}" ]; then
  echo "$0: Error: There is no swap partition. Aborted!"
else

	if swapon -s | grep -F "${SWAP_DEVICE}" > /dev/null; then
	  echo "Swap partition ${SWAP_DEVICE} is already turned on."
	else
	  swapon "${SWAP_DEVICE}"
	  echo "Swap partition ${SWAP_DEVICE} is now turned on."
	fi
	
fi

