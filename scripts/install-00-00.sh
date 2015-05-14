#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Log default total size.
GF_LOG_TOTAL_SIZE

# Execute base scripts in the following order:
./install-00-base.sh
./install-00-locale.sh

