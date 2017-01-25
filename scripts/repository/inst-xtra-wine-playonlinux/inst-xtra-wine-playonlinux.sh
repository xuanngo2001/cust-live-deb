#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install dependencies.
apt-get -y --force-yes install python-wxgtk3.0
apt-get -y --force-yes install cabextract
apt-get -y --force-yes install mesa-utils
apt-get -y --force-yes install gettext-base
apt-get -y --force-yes install icoutils
apt-get -y --force-yes install p7zip-full


# Install playonlinux.
apt-get -y --force-yes install playonlinux

# Insert playonlinux in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-playonlinux.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Enable run as root.
yes | cp -av mainwindow.py /usr/share/playonlinux/python/
yes | cp -av sources /usr/share/playonlinux/lib/

# Log
echo "${GV_LOG} * Install playonlinux."
echo "${GV_LOG} * Insert playonlinux in Internet menu."