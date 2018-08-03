#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y --force-yes <your-package>  # Explicitly download dependent packages 

# Install shutter.
apt-get -y --force-yes install shutter perlmagick

# Package needed to enable Edit button in Shutter.
apt-get -y --force-yes install libgoo-canvas-perl

# Log
echo "${GV_LOG} * Install shutter."

# REJECTED:
#   Too big. Can be replaced with printscreen + Dia.