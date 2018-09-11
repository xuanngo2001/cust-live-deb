#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# This is required. Otherwise, when opening lxrandr, it will say "Unable to get monitor information".
#   Probably, xrandr is needed.
	apt-get -y install x11-xserver-utils

# Install lxrandr.
	apt-get -y install lxrandr

# Insert lxrandr menu in Administration
	sed -i "/Administration\">/ r jwmrc-menus-adm-lxrandr.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Add key binding
	sed -i "/NEW KEYS HERE -->/ r jwmrc-key-lxrandr.xml" "${CLD_JWMRC_DIR}/jwmrc-key.xml"

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
	echo "${GV_LOG} * Install Monitor Switcher: lxrandr."
	echo "${GV_LOG} * Add lxrandr key binding."


# Reference
# https://awesome.naquadah.org/wiki/Using_Multiple_Screens
# https://fitzcarraldoblog.wordpress.com/2013/04/03/switching-the-display-quickly-between-a-laptop-monitor-and-an-external-monitor-or-projector-in-linux/
# https://wiki.archlinux.org/index.php/Multihead

# Apps:
#  http://willem.engen.nl/projects/disper/
#  https://github.com/wertarbyte/autorandr
