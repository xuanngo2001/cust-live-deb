#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
  apt-get install -d -y libsdl2-mixer-2.0-0 

# Install dependencies.
  apt-get -y install freeciv-server

# Install freeciv-client-gtk only, other clients are available.
  apt-get -y install freeciv-client-gtk freeciv-data freeciv-sound-standard

# Log
  echo "${GV_LOG} * Install freeciv-server: You need the server to run freeciv."
  echo "${GV_LOG} * Install freeciv-client-gtk."
  echo "${GV_LOG} * How to run freeciv: http://freeciv.wikia.com/wiki/Install#Start_the_game"
