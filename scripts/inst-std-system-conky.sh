#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install conky

# Set conky.
CONKYRC=conkyrc
cp ${GV_SETTINGS_DIR}/${CONKYRC} /root/.${CONKYRC}

# Log
echo "${GV_LOG} * Install System Monitor: conky."
echo "${GV_LOG} * Set ${CONKYRC}."

# Reference
# http://www.techdrivein.com/2010/12/13-breathtaking-conky-configurations.html
# http://custom-linux.deviantart.com/gallery/39357745/Conky-Themes
# http://conky.sourceforge.net/variables.html

