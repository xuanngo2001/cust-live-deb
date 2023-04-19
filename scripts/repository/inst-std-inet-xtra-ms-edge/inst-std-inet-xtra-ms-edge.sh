#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install edge.
	#apt-get -y install edge
	
	dpkg -i microsoft-edge-stable_112.0.1722.48-1_amd64.deb

# Insert Google Chrome in Internet menu.
	sed -i "/Internet\">/ r jwmrc-menus-inet-ms-edge.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Change config to run MS Edge as root.
	#chmod +x  ./run-ms-edge-as-root.sh
	#./run-ms-edge-as-root.sh

# Log
	echo "${GV_LOG} * Install MS Edge using *.deb."
	echo "${GV_LOG} * Change config to run MS Edge as root."
