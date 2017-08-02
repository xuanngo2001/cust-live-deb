#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install dependencies.
#   Disabled because it might not be the default-jre but openjdk-8-jre.
#apt-get -y install default-jre

PROJECT_LIBRE_DEB=$(ls -1 projectlibre_*.deb | sort -r | head -n1)
dpkg -i ${PROJECT_LIBRE_DEB}
 
# Log
echo "${GV_LOG} * Install ProjectLibre: ${PROJECT_LIBRE_DEB}."
