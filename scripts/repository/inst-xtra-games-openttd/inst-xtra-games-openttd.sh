#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y <your-package>  # Explicitly download dependent packages 

# Install openttd.
apt-get -y install openttd-opengfx openttd-opensfx openttd-openmsx
apt-get -y install openttd


# Log
openttd_version=$(/usr/games/openttd -v | head -n1)
echo "${GV_LOG} * Install ${openttd_version}."

# dpkg -i $(ls -1 openttd-*linux*-amd64.deb | sort -r | head -n1)