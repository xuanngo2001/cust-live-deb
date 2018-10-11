#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#	apt-get install -d -y <your-package> 

# Install libreoffice-deb.
	./libreoffice-deb-install.sh

# Insert LibreOffice menu in Office
	sed -i "/Office\">/ r jwmrc-menus-office-libreoffice.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"
 
# Log
	lo_version=$(libreoffice --version | head -n1 | sed 's/.*Office //')
	echo "${GV_LOG} * Install libreoffice-deb: ${lo_version}."

	echo "${GV_LOG} * Install Office Suite: Word processor."
	echo "${GV_LOG} * Install Office Suite: Spreadsheet."
	echo "${GV_LOG} * Install Office Suite: Presentation."
	echo "${GV_LOG} * Install Office Suite: Drawing."
	echo "${GV_LOG} * Install Office Suite: Database."
	echo "${GV_LOG} * Install Office Suite: Equation."
	echo "${GV_LOG} * https://wiki.documentfoundation.org/ReleasePlan"