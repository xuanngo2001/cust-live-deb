#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install Drush using phar binary
DRUSH_PHAR=$(ls -1 drush.phar-* | sort -r | head -n1)
chmod +x ${DRUSH_PHAR}

LOCAL_BIN=/usr/local/bin
yes | cp -av "${DRUSH_PHAR}" ${LOCAL_BIN}/drush 

# Add to CLD/
  yes | cp -av ./cld  /usr/local

# Log
echo "${GV_LOG} * Install $(drush --version | tr -s ' ') to manage Drupal."
echo "${GV_LOG} * List of commands at http://drushcommands.com/."

# Reference:
#   -Download at https://github.com/drush-ops/drush/releases
#   -https://pantheon.io/blog/easily-install-drush-phar

