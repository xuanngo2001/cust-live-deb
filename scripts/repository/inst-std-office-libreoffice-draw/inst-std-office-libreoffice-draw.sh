#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#	apt-get install -d -y <your-package> 

# Install libreoffice-draw.
	apt-get -y install libreoffice-draw

# Insert LibreOffice menu in Office
	sed -i "/Office\">/ r jwmrc-menus-office-libreoffice-draw.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"
	
# Log
	lo_version=$(libreoffice --version | head -n1 | sed 's/.*Office //')
	echo "${GV_LOG} * Install libreoffice-draw: ${lo_version}."
