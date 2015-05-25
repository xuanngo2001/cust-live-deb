#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install jwm

# Set JWM.
JWMRC=jwmrc
yes | cp ${GV_SETTINGS_DIR}/${JWMRC} /root/.${JWMRC}
yes | cp ${GV_SETTINGS_DIR}/${JWMRC}-* /root/


# Log
echo "${GV_LOG} * Install Window Manager: JWM."
echo "${GV_LOG} * Set ${JWMRC}."


# Reference:
# http://puppylinux.org/wikka/Configure_PuppyMenu
#
