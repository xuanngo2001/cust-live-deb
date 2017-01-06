#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install dia to draw diagrams.
apt-get -y --force-yes install dia

# Insert Dia menu in Graphics
sed -i "/Graphics\">/ r jwmrc-menus-graphics-dia.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Install Dia to draw diagrams."
echo "${GV_LOG} * Insert Dia menu in Graphics."
echo "${GV_LOG} * How to add a new shape to Dia: http://dia-installer.de/howto/create_shape/index.html.en"
echo "${GV_LOG} * Dia Shape Repository: http://dia-installer.de/shapes/index.html.en"
