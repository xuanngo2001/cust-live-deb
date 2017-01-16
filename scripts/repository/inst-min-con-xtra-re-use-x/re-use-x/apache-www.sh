#!/bin/bash
set -e
# Description: Setup Apache.
SCRIPT_NAME=$(basename "$0")

WEB_ROOT_DIR=$1
APACHE_SYMBOLIC_NAME=$2

# Error handling
##################
if [ $# -ne 2 ]; then
	echo "${SCRIPT_NAME}: Error: Missing arguments. Aborted!"
	echo "   e.g.: ${SCRIPT_NAME}  WEB_ROOT_DIR APACHE_SYMBOLIC_NAME"
	echo "   e.g.: ${SCRIPT_NAME}  /path/to/drupal/ opw"
	exit 1;
fi

if [ ! -d ${WEB_ROOT_DIR} ]; then
  echo "${SCRIPT_NAME}: Error: ${WEB_ROOT_DIR} is not a directory."
  exit 1;
fi

WEB_ROOT_DIR=$(readlink -ev "${WEB_ROOT_DIR}")

# Link apache to folder
##################
APACHE_DIR=/var/www/html/${APACHE_SYMBOLIC_NAME}
rm -f ${APACHE_DIR}
ln -s ${WEB_ROOT_DIR} ${APACHE_DIR}
#chmod -R 777 ${WEB_ROOT_DIR}
chown -R www-data:www-data ${WEB_ROOT_DIR}
chmod -R 755 ${WEB_ROOT_DIR}

# Display symbolic links
#########################
echo "${SCRIPT_NAME}: Linked ${APACHE_SYMBOLIC_NAME} -> ${WEB_ROOT_DIR}"