#!/bin/bash
set -e
set -o pipefail

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install webcam: camorama.
apt-get -y --force-yes install camorama


# Insert Camorama menu in Graphics
sed -i "/Graphics\">/ r jwmrc-menus-graphics-camorama.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install webcam: Camorama."
echo "${GV_LOG} * Insert Camorama menu in Graphics."

