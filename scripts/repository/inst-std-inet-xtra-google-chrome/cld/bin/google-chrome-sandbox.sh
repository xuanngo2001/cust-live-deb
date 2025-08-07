#!/bin/bash
set -e
# Description: Run Google Chrome as root.
#   Note: from ./inst-std-inet-xtra-google-chrome/cld/bin/google-chrome-sandbox.sh
this_script=$(basename "${0}")

google-chrome --no-sandbox --user-data-dir "$@" &