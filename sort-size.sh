#!/bin/bash
set -e
# Description: List script size used in ascending order.

# Ensure install-size-history.data is up-to-date.
./sc-reformat-log.sh
./sc-create-parsable-data.sh

SCRIPT_LOG_PARSABLE=install-size-history.data

sort -t ';' -k5,5n "${SCRIPT_LOG_PARSABLE}"