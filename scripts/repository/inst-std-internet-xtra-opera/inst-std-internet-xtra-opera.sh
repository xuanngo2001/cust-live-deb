#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add specific sources list: No need because it will be added from *.deb.
#   GF_ADD_SOURCE_LIST live "deb http://deb.opera.com/opera-stable/ stable non-free"

# Explicitly download dependent packages
apt-get install -d -y apt-transport-https 


# Install opera.
debconf-set-selections -v opera.seed
apt-get -y install opera-stable

# Insert Opera in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-opera.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install opera."

# Reference:
#   Install flash: https://lists.debian.org/debian-user/2017/06/msg00885.html