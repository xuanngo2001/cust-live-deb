#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install Image Editor: Pinta.
apt-get -y install pinta

# Insert Pinta menu in Graphics
sed -i "/Graphics\">/ r jwmrc-menus-graphics-pinta.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Install Image Editor: Pinta."
echo "${GV_LOG} * Insert Pinta menu in Graphics."