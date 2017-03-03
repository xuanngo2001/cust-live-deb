#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install gsimplecal.
apt-get -y --force-yes install gsimplecal

# Insert gsimplecal in JWM system tray.
yes | cp -av jwmrc-tray.xml ${GV_CLD_ROOT_DIR}/jwmrc-tray.xml

# Overwrite configuration.
yes | cp -av ./gsimplecal  /root/.config/

# Overwrite gtk calendar style
GTK_CONFIG_DIR=/root/.config/gtk-3.0/
mkdir -p "${GTK_CONFIG_DIR}"
GTK_CONFIG_DIR=$(readlink -ev "${GTK_CONFIG_DIR}")
yes | cp -av gtk.css  "${GTK_CONFIG_DIR}"

# Log
echo "${GV_LOG} * Install gsimplecal."
echo "${GV_LOG} * Insert gsimplecal in JWM system tray."
echo "${GV_LOG} * Overwrite configuration."
echo "${GV_LOG} * Overwrite gtk calendar style."
