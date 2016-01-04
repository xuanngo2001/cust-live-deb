#!/bin/bash
set -e

SCRIPT_LOG_PARSABLE=install-size-history.data

SCRIPT_LOG_PARSABLE=$(readlink -ev "${SCRIPT_LOG_PARSABLE}")

# Set working directory.
WORK_DIR="./tmp-working"
mkdir -p "${WORK_DIR}"
WORK_DIR=$(readlink -ev "${WORK_DIR}")



while IFS='' read -r SCRIPT_NAME || [[ -n "$SCRIPT_NAME" ]]; do
  
  # Note: '|| true' to continue if pattern not found.
  grep -F "${SCRIPT_NAME}" "${SCRIPT_LOG_PARSABLE}" | grep -i '^na;'> "${WORK_DIR}/na_${SCRIPT_NAME}.log" || true
  grep -F "${SCRIPT_NAME}" "${SCRIPT_LOG_PARSABLE}" | grep -i '^min;'> "${WORK_DIR}/min_${SCRIPT_NAME}.log" || true
  grep -F "${SCRIPT_NAME}" "${SCRIPT_LOG_PARSABLE}" | grep -i '^std;'> "${WORK_DIR}/std_${SCRIPT_NAME}.log" || true
  grep -F "${SCRIPT_NAME}" "${SCRIPT_LOG_PARSABLE}" | grep -i '^home;'> "${WORK_DIR}/home_${SCRIPT_NAME}.log" || true
  grep -F "${SCRIPT_NAME}" "${SCRIPT_LOG_PARSABLE}" | grep -i '^work;'> "${WORK_DIR}/work_${SCRIPT_NAME}.log" || true
  grep -F "${SCRIPT_NAME}" "${SCRIPT_LOG_PARSABLE}" | grep -i '^all;'> "${WORK_DIR}/all_${SCRIPT_NAME}.log" || true
 
done < <( cut -d ';' -f 2 "${SCRIPT_LOG_PARSABLE}" | sort | uniq | tr -d ' ' )

# Delete empty files.
find "${WORK_DIR}" -type f -name '*.sh.log' -size  0 -print0 |xargs -0 rm