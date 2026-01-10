#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install yt-dlp-ejs.
    pip install -U yt-dlp-ejs --break-system-packages --root-user-action=ignore

# Log
    echo "${GV_LOG} * Install yt-dlp-ejs."
