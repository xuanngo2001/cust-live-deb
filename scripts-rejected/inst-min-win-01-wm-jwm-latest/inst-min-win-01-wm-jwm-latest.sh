#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install jwm

  apt-get -y --force-yes install dh-autoreconf
  apt-get -y --force-yes install libx11-dev
  apt-get -y --force-yes install checkinstall
  
  # Specific to JWM.
  apt-get -y --force-yes install libxext-dev
  apt-get -y --force-yes install libpng-dev
  apt-get -y --force-yes install libxpm-dev
  apt-get -y --force-yes install libxinerama-dev
  apt-get -y --force-yes install libxft-dev
  apt-get -y --force-yes install libxrender-dev
  apt-get -y --force-yes install libfontconfig1-dev
  apt-get -y --force-yes install zlib1g-dev
  apt-get -y --force-yes install libx11-6
  apt-get -y --force-yes install libfribidi-dev
  apt-get -y --force-yes install libxmu-dev

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
# jwm -restart
# jwm -exit

# REJECTION: Too old.
#  * Running inst-min-win-01-wm-jwm.sh ...
#    * After this operation, 5,989 kB of additional disk space will be used.
#    * Install Window Manager: JWM.
#    * Set jwmrc.
#    * Disk size = 2489948K. Space Used = 12572K.

# REJECTION: Too big.
#   * Running inst-min-win-01-wm-jwm-latest.sh ...
#     * After this operation, 5,989 kB of additional disk space will be used.
#     * After this operation, 110 MB of additional disk space will be used.
#     * After this operation, 7,886 kB of additional disk space will be used.
#     * After this operation, 524 kB of additional disk space will be used.
#     * After this operation, 1,234 kB of additional disk space will be used.
#     * After this operation, 1,068 kB of additional disk space will be used.
#     * After this operation, 267 kB of additional disk space will be used.
#     * After this operation, 92.2 kB of additional disk space will be used.
#     * After this operation, 6,944 kB of additional disk space will be used.
#     * After this operation, 132 kB of additional disk space will be used.
#     * After this operation, 2,144 kB of additional disk space will be used.
#     * Install Window Manager: JWM vsvn-579 by Joe Wingbermuehle.
#     * Set jwmrc.
#     * Disk size = 2758228K. Space Used = 166888K.
