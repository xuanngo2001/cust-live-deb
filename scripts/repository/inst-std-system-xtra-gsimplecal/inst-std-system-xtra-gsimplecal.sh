#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install gsimplecal.
  apt-get -y install gsimplecal

# Insert gsimplecal in JWM system tray.
  sed -i "/<\/Clock>/ r jwmrc-tray-clock.xml" "${CLD_JWMRC_DIR}/jwmrc-tray.xml"
  sed -i '/xclock</d' "${CLD_JWMRC_DIR}/jwmrc-tray.xml"

# Overwrite gtk calendar style: home/.config/gtk-3.0/gtk.css
# Overwrite gsimplecal configuration: home/.config/gsimplecal/config
  yes | cp -av ./cld  /usr/local

# Log
echo "${GV_LOG} * Install gsimplecal."
echo "${GV_LOG} * Insert gsimplecal in JWM system tray."
echo "${GV_LOG} * Overwrite gtk calendar style: home/.config/gtk-3.0/gtk.css."
echo "${GV_LOG} * Overwrite gsimplecal configuration: home/.config/gsimplecal/config."
