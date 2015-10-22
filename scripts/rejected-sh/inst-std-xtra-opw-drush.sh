#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install drush to manage Drupal. 
apt-get -y --force-yes install drush


# Log
echo "${GV_LOG} * Install drush to manage Drupal."
echo "${GV_LOG} * Further setting is needed. See https://wiki.debian.org/drush."

# REJECTION: Version 5 is too old.
#  * Running inst-std-xtra-opw-drush.sh ...
#    * After this operation, 1,507 kB of additional disk space will be used.
#    * Install drush to manage Drupal.
#    * Further setting is needed. See https://wiki.debian.org/drush.
#    * Disk size = 2829588K. Space Used = 1952K.

