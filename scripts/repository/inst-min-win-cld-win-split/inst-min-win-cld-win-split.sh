#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install required applications for cld-win-split.sh
apt-get -y --force-yes install wmctrl
apt-get -y --force-yes install x11-utils

chmod +x ./xwinsplitter/*.sh
chmod +x *.sh
yes | cp -av ./xwinsplitter/*.sh /usr/local/bin/
yes | cp -av *.sh /usr/local/bin/

# Add key binding
sed -i "/NEW KEYS HERE -->/ r jwmrc-key-win-split.xml" "${CLD_JWMRC_DIR}/jwmrc-key.xml"


# Log
echo "${GV_LOG} * Install required applications for cld-win-split.sh: wmctrl and x11-utils for xprop."
echo "${GV_LOG} * Add key bindings: Ctrl+Alt+Left, Right, Up, Down, 1, 2, 3, 4, 5, 6, 7, 8, 9."
