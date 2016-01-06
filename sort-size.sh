#!/bin/bash
set -e
# Description: List script size used in ascending order.

# Ensure install-size-history.data is up-to-date.
./sc-reformat-log.sh
./sc-create-parsable-data.sh

ACTION=$1

SCRIPT_LOG_PARSABLE=install-size-history.data


ACTION=$(echo "${ACTION}" | tr '[:upper:]' '[:lower:]')  # Lowercase to avoid case typo.
case "${ACTION}" in

  package)
    sort -u -t ';' -k5,5n -k2,2 "${SCRIPT_LOG_PARSABLE}"
    ;;
  
  *)
    sort -t ';' -k5,5n "${SCRIPT_LOG_PARSABLE}"
    exit 1
    ;;
esac