#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Log default total size.
# Don't know why GF_LOG_TOTAL_SIZE doesn't work.
echo "${GV_LOG} * Total size = $(du -s -BK --exclude=/proc / | head -n 1 | cut -f1)."

# Execute base scripts in the following order:
./install-00-base.sh
./install-00-locale.sh

