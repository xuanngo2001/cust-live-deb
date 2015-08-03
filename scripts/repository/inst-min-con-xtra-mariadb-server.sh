#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Tell Debconf that user interaction is not desired.
#export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true 

# Preseed mariadb-server password
#debconf-set-selections ${GV_SETTINGS_DIR}/mariadb-server.seed

ROOT_PASSWORD=PASS
export DEBIAN_FRONTEND=noninteractive
debconf-set-selections <<< "mariadb-server-10.0 mysql-server/root_password password ${ROOT_PASSWORD}"
debconf-set-selections <<< "mariadb-server-10.0 mysql-server/root_password_again password ${ROOT_PASSWORD}"
  
# Install mariadb-server.
apt-get -y --force-yes install mariadb-server

# Log
echo "${GV_LOG} * Install mariadb-server."
echo "${GV_LOG} * Set root password to ${ROOT_PASSWORD}."

# If /var/run/mysqld/mysqld.sock doesn't exist, then mysqld is not running.