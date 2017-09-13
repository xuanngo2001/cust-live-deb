#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add deb-multimedia sources list
GF_ADD_SOURCE_LIST live "deb http://www.deb-multimedia.org stretch main non-free"

# Update packages.
apt-get update

# Log
echo "${GV_LOG} * Add deb-multimedia repository."
echo "${GV_LOG} * apt-get update"

# Note:
# Key might change, see http://www.deb-multimedia.org/