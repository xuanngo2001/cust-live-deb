#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#	apt-get install -d -y <your-package> 

# Install geany.
	apt-get -y install geany

# Insert geany in Accessories menu.
	sed -i "/Accessories\">/ r jwmrc-menus-acc-geany.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
	echo "${GV_LOG} * Install geany."
