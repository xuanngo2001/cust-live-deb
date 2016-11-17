#!/bin/bash
set -e
# Description: List script size used in ascending order.
# Output format are dependent of the ACTION

# Ensure install-size-history.data is up-to-date.
./sc-reformat-log.sh
./sc-create-parsable-data.sh

ACTION=$1

SCRIPT_LOG_PARSABLE=install-size-history.data


ACTION=$(echo "${ACTION}" | tr '[:upper:]' '[:lower:]')  # Lowercase to avoid case typo.
case "${ACTION}" in

  # Display package(script name) space used size in kilobytes.
  package)
    cut -d ';' -f 2,5 "${SCRIPT_LOG_PARSABLE}" | sort -u -t ';' -k2,2n | grep -v 'install\.sh'
    echo "<script-name>; <space-used-kb>"
    ;;
  
  *)
    sort -t ';' -k5,5n "${SCRIPT_LOG_PARSABLE}"
    echo "<system>: <script-name>; <date-time>; <disk-size-kb>; <space-used-kb>"
    ;;
esac

