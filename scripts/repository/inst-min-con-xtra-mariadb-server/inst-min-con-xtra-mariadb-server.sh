#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Preseed password
ROOT_PASSWORD=password
echo "mariadb-server-10.0 mysql-server/root_password password ${ROOT_PASSWORD}" | debconf-set-selections
echo "mariadb-server-10.0 mysql-server/root_password_again password ${ROOT_PASSWORD}" | debconf-set-selections
  
# Install mariadb-server.
apt-get -y install mariadb-server

# Shutdown mariadb-server
mysqladmin -u root -p${ROOT_PASSWORD} shutdown

# Add to CLD/
 yes | cp -av ./cld  /usr/local

# Log
echo "${GV_LOG} * Install mariadb-server."
echo "${GV_LOG} * Set root password to ${ROOT_PASSWORD}."

# If /var/run/mysqld/mysqld.sock doesn't exist, then mysqld is not running.
# mysqladmin -u root -p shutdown

# sudo DEBIAN_FRONTEND=noninteractive apt-get install -y --allow-unauthenticated mariadb-server mariadb-test libmariadbclient-dev
# https://mariadb.com/kb/en/mariadb/installing-vm-images-for-testing-deb-upgrade-between-versions/