#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Preseed mariadb-server password
debconf-set-selections ${GV_SETTINGS_DIR}/mariadb-server.seed

# Install mariadb-server.
apt-get -y --force-yes install mariadb-server

# Log
echo "${GV_LOG} * Install mariadb-server."
echo "${GV_LOG} * Set root password to 'password'."

