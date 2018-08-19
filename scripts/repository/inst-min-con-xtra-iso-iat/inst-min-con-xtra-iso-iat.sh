#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install iat
  apt-get -y install iat


# Log
  echo "${GV_LOG} * Install iat to convert BIN, MDF, PDI, CDI, NRG, and B5I into ISO-9660."

