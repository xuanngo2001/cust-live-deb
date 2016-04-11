#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

#apt-get -y --force-yes install build-essential fakeroot devscripts

apt-get -y --force-yes install libxinerama1 libfribidi0 libperl5.20 libstartup-notification0 libxft2 ncurses-term rxvt-unicode-256color
  
dpkg -i jwm_2.1.0+svn579-2_amd64.deb
yes | cp -av example.jwmrc /etc/jwm/system.jwmrc
yes | cp -av example.jwmrc /root/.jwmrc