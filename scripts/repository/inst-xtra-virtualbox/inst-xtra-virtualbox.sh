#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add source url.
  GF_ADD_SOURCE_LIST live "deb https://download.virtualbox.org/virtualbox/debian stretch contrib"

# Explicitly download dependent packages
#   apt-get install -d -y <your-package> 


# Install virtualbox.
  apt-get -y install virtualbox-5.2 libqt5opengl5 libqt5x11extras5


# Log
  echo "${GV_LOG} * Install virtualbox."