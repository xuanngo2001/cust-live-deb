#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#   apt-get install -s -y <your-package> 

# Install libwebkitgtk-3.0-0.
  apt-get -y install libwebkitgtk-3.0-0


# Log
  echo "${GV_LOG} * Install libwebkitgtk-3.0-0."
  echo "${GV_LOG} * Otherwise, eclipse will complain when openning *.md files that XULrunner is not found. No gtk3 for XULrunner."


