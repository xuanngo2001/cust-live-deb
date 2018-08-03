#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install fonts-liberation.
apt-get -y install fonts-liberation


# Log
echo "${GV_LOG} * Install fonts-liberation to get free variants of the Times, Arial and Courier fonts."
echo "${GV_LOG} * Otherwise, install ttf-mscorefonts-installer to get Microsoft TrueType core fonts."
