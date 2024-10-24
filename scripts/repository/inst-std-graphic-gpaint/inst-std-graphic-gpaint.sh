#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#	apt-get install -s -y <your-package> 

# Install gpaint.
	apt-get -y install gpaint

# Insert Gpaint menu in Graphics
	sed -i "/Graphics\">/ r jwmrc-menus-graphics-gpaint.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
	echo "${GV_LOG} * Install gpaint."
