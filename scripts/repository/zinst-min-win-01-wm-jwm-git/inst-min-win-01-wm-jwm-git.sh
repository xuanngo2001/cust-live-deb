#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install jwm
dpkg -i jwm_2.2.2~bpo-1_amd64.deb

# Set JWM.
JWMRC=jwmrc
yes | cp ${JWMRC}.xml        /root/.${JWMRC}
yes | cp ${JWMRC}-menus.xml  "${GV_CLD_ROOT_DIR}"
yes | cp ${JWMRC}-tray.xml   "${GV_CLD_ROOT_DIR}"
yes | cp ${JWMRC}-key.xml    "${GV_CLD_ROOT_DIR}"
yes | cp ${JWMRC}-startup.sh "${GV_CLD_ROOT_DIR}"

# Log
JWM_VERSION=$(jwm -v | head -n 1)
echo "${GV_LOG} * Install Window Manager: ${JWM_VERSION}."
echo "${GV_LOG} * Set ${JWMRC}."

# Reference:
# http://puppylinux.org/wikka/Configure_PuppyMenu
#
# Working options:
# jwm -v
# JWM vsvn-579 by Joe Wingbermuehle
# compiled options: confirm fribidi icons png shape xft xinerama xpm xrender 
# system configuration: /etc/jwm/system.jwmrc