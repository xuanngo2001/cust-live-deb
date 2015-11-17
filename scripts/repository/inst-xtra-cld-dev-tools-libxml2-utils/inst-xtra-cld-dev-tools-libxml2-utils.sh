#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install libxml2-utils to validate xml file.
apt-get -y --force-yes install libxml2-utils


# Log
echo "${GV_LOG} * Install libxml2-utils to validate xml file."

