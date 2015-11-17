#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install xarchiver

# Log
echo "${GV_LOG} * Install Archive Manager: xarchiver."

# Note:
# Small but not intuitive: How to add multiple files in archive? Tried for 3 minutes.
# This is none issue if used with Thunar archive plugin.
