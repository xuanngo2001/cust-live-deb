#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

#export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true DEBCONF_DEBUG=developer
export DEBCONF_DEBUG=developer

debconf-set-selections ${GV_SETTINGS_DIR}/wifite-wireshark.seed
apt-get -y --force-yes install wifite

# Log
echo "${GV_LOG} * Install wifite."
