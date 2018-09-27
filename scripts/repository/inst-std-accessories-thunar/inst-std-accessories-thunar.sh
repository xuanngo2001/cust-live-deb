#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install thunar.
	apt-get -y install thunar
	apt-get -y install thunar-archive-plugin
	apt-get -y install thunar-volman
	apt-get -y install gnome-icon-theme   # Ensure icons are shown in Thunar.

# Insert Thunar in Accessories menu.
	sed -i "/Accessories\">/ r jwmrc-menus-acc-thunar.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
	echo "${GV_LOG} * Install Thunar file manager."
	echo "${GV_LOG} * Insert Thunar in Accessories menu."

# Feature: 
#   -Can't compress by its own. Need other plugins: xarchiver(crap), try file-roller(?).
