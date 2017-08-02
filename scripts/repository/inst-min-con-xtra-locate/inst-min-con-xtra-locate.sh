#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install locate
apt-get -y install locate

# Add locate alias.
yes | cp -av ./cld/  /usr/local

# Log
echo "${GV_LOG} * Install locate to generate an index of files and directories. Searching for files will be much faster."
echo "${GV_LOG} * Add locate alias."
echo "${GV_LOG} * Run updatedb to update the database."
