#!/bin/bash
set -e
# Description: Sum up bandwidth usage.
# Return: interface|dateTime|receiveBytes|transmittedBytes
#   Doc: cat /proc/net/dev

CONTENT=$(cat "$@" | grep -v lo)
BYTES_RECEIVED=$(echo "${CONTENT}" | cut -d'|' -f3)
BYTES_TRANSMITTED=$(echo "${CONTENT}" | cut -d'|' -f4)
TOTAL_BYTES_RECEIVED=$(awk '{sum+=$1} END {printf "%.0f", sum}' <(echo "${BYTES_RECEIVED}"))
TOTAL_BYTES_TRANSMITTED=$(awk '{sum+=$1} END {printf "%.0f", sum}' <(echo "${BYTES_TRANSMITTED}"))
TOTAL_RECEIVED_STR=$(numfmt --to=iec-i --suffix=B --format="%7f" "${TOTAL_BYTES_RECEIVED}")
TOTAL_TRANSMITTED_STR=$(numfmt --to=iec-i --suffix=B --format="%7f" "${TOTAL_BYTES_TRANSMITTED}")

echo "${CONTENT}"
echo ""
printf "%20s: %7s \n" "Total downloaded" "${TOTAL_RECEIVED_STR}"
printf "%20s: %7s\n"  "Total uploaded"   "${TOTAL_TRANSMITTED_STR}"
echo ""
