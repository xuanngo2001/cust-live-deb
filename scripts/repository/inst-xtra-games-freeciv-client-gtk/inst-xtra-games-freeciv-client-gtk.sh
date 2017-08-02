#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#apt-get install -d -y freeciv-sound-standard 

# Install freeciv-client-gtk.
apt-get -y install freeciv-client-gtk freeciv-sound-standard


# Log
echo "${GV_LOG} * Install freeciv-client-gtk."
echo "${GV_LOG} * How to run freeciv: http://freeciv.wikia.com/wiki/Install#Start_the_game"
