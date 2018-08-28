#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
  apt-get install -d -y libjansson4 

# Install handbrake-cli.
  apt-get -y install handbrake-cli


# Log
  echo "${GV_LOG} * Install handbrake-cli."


