#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#   apt-get install -d -y <your-package> 

# Install mencoder.
  apt-get -y install mencoder


# Log
  echo "${GV_LOG} * Install mencoder."

# REJECTED:
#   Instead, use ffmpeg(19892K). Mencoder(55664K).


