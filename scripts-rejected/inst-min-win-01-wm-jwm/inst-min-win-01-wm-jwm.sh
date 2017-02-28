#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install jwm

# Set JWM.
JWMRC=jwmrc
yes | cp -av ${JWMRC}.xml        "/root/.${JWMRC}"
yes | cp -av ${JWMRC}-*.xml  "${GV_CLD_ROOT_DIR}"
yes | cp -av ${JWMRC}-startup.sh "${GV_CLD_ROOT_DIR}"


# Log
JWM_VERSION=$(jwm -v | head -n 1)
echo "${GV_LOG} * Install Window Manager: ${JWM_VERSION}."
echo "${GV_LOG} * Set ${JWMRC}."


# Reference:
# http://puppylinux.org/wikka/Configure_PuppyMenu
#
# jwm -restart
# jwm -exit

# REJECTION: Too old.
#  * Running inst-min-win-01-wm-jwm.sh ...
#    * After this operation, 5,989 kB of additional disk space will be used.
#    * Install Window Manager: JWM.
#    * Set jwmrc.
#    * Disk size = 2489948K. Space Used = 12572K.