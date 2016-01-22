#!/bin/bash
set -e
set -o pipefail

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install php5-gd to run Drupal. 
apt-get -y --force-yes install php5-gd


# Log
echo "${GV_LOG} * Install php5-gd to run Drupal."



