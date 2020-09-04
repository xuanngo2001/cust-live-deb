#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install php-apcu.
	apt-get -y install php-apcu


# Log
	echo "${GV_LOG} * Install php-apcu. Require for Drupal."
	echo "${GV_LOG} * https://flaviocopes.com/php-caching/#:~:text=APCu,work%20just%20after%20being%20installed."
	echo "${GV_LOG} * https://stackoverflow.com/a/37062144"
