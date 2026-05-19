#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install curl-cffi.
    pip install "yt-dlp[default,curl-cffi]" --break-system-packages
    #pip install curl_cffi --upgrade --break-system-packages

    # Don't know why it uninstall 0.15.0 in previous command, so install it again.
    pip install curl_cffi==0.15.0 --force-reinstall --break-system-packages

    yt-dlp --list-impersonate-targets

    yt-dlp --version

# Log
    echo "${GV_LOG} * Install curl-cffi for yt-dlp to impersonate: yt-dlp --impersonate Chrome-124"
