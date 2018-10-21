#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install Drush using phar binary
	drush_phar=$(ls -1 drush-*.phar | sort -r | head -n1)
	chmod +x ${drush_phar}
	
	local_bin_dir=/usr/local/bin
	yes | cp -av "${drush_phar}" ${local_bin_dir}/drush 

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
	echo "${GV_LOG} * Install $(drush --version | tr -s ' ') to manage Drupal."
	echo "${GV_LOG} * List of commands at http://drushcommands.com/."

# Reference:
#   -Download at https://github.com/drush-ops/drush/releases
#   -https://pantheon.io/blog/easily-install-drush-phar

# REJECTED: Move out of CLD. Add in firstboot.

