#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install scite
	apt-get -y install scite

# Insert scite in Accessories menu.
	sed -i "/Accessories\">/ r jwmrc-menus-acc-scite.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# To shut up warning message: "(scite:1224): WARNING **: Error retrieving accessibility bus address: org.freedesktop.DBus.Error.ServiceUnknown: 
#	The name org.a11y.Bus was not provided by any .service files"
	apt-get -y install at-spi2-core
	
# Log
	echo "${GV_LOG} * Install Text Editor: SciTE."
	echo "${GV_LOG} * Insert SciTE in Accessories menu."
	echo "${GV_LOG} * Install at-spi2-core to shut up Accessibility warning message."


