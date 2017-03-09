#!/bin/bash
set -e
# Description: Get bandwidth usage.
# Return: interface|dateTime|receiveBytes|transmittedBytes
#   Doc: cat /proc/net/dev
DATE_STRING=$(date +"%Y-%m-%d.%0k.%M.%S")

IF_BASE_DIR=$(readlink -ev "/sys/class/net/")
while IFS='' read -r INTERFACE || [[ -n "$INTERFACE" ]]; do
  RECEIVED_BYTES=$(cat "${IF_BASE_DIR}/${INTERFACE}/statistics/rx_bytes")
  TRASMITTED_BYTES=$(cat "${IF_BASE_DIR}/${INTERFACE}/statistics/tx_bytes")
  echo "${INTERFACE}|${DATE_STRING}|${RECEIVED_BYTES}|${TRASMITTED_BYTES}"
done < <( ls -1 "${IF_BASE_DIR}" )