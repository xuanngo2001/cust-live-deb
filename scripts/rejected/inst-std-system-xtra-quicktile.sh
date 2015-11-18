#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install dependencies.
DEPENDENCIES_LIST="python python-gtk2 python-xlib python-dbus python-wnck"
apt-get -y --force-yes install ${DEPENDENCIES_LIST}

# Install quicktile from binary.
QUICKTILE_DIR=${GV_BINARY_DIR}/quicktile
LOCAL_BIN=/usr/local/bin/
yes | cp ${QUICKTILE_DIR}/quicktile.py ${LOCAL_BIN}


# Set quicktile to run on JWN startup.
cat ${GV_SETTINGS_DIR}/jwmrc-startup-quicktile.sh >> /root/jwmrc-startup.sh

# Log
echo "${GV_LOG} * Install dependencies: ${DEPENDENCIES_LIST// /, }."
echo "${GV_LOG} * Install quicktile from binary."
echo "${GV_LOG} * Set quicktile to run on JWN startup."
echo "${GV_LOG} * Configuration file is located at /root/.config/quicktile.cfg."

# REJECTION:
#  * Running inst-std-system-xtra-quicktile.sh ...
#    * After this operation, 3,086 kB of additional disk space will be used.
#    * Install dependencies: python, python-gtk2, python-xlib, python-dbus, python-wnck.
#    * Install quicktile from binary.
#    * Set quicktile to run on JWN startup.
#    * Configuration file is located at /root/.config/quicktile.cfg.
#    * Disk size = 2909428K. Space Used = 2668K.
