#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal. 
apt-get -y --force-yes install php5-mysql

# Enable mod_rewrite module.
a2enmod rewrite

# Log
echo "${GV_LOG} * Install php5-mysql to enable the PDO_MYSQL database driver for PHP and to run Drupal."
echo "${GV_LOG} * Enable mod_rewrite module."

