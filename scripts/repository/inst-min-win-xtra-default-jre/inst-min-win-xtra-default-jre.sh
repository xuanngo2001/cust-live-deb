#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#   apt-get install -d -y <your-package> 

# Install default-jre.
  apt-get -y install default-jre


# Log
  echo "${GV_LOG} * Install default-jre."
  echo "${GV_LOG} * Needed for Sweet Home 3D: java.awt.AWTError: Assistive Technology not found."


