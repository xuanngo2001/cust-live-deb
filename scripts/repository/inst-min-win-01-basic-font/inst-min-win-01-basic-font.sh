#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install fonts-dejavu-core.
apt-get -y install fonts-dejavu-core


# Log
echo "${GV_LOG} * Install fonts-dejavu-core to fix characters overlap with xfce4-terminal(e.g. mkdir)."