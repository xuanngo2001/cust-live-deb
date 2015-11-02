#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install gpicview
apt-get -y --force-yes install gpicview

# Insert gpicview in Accessories menu.
sed -i "/Accessories\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-acc-gpicview.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Install Image Viewer: gpicview."
echo "${GV_LOG} * Insert gpicview in Accessories menu."


# REJECTION:
#  * Running inst-std-accessories-geeqie.sh ...
#    * After this operation, 8,414 kB of additional disk space will be used.
#    * Install Image Viewer: geeqie.
#    * Add alias for geeqie: g.
#    * Disk size = 1201732K. Space Used = 8732K.
#  * Running inst-std-accessories-gpicview.sh ...
#    * After this operation, 876 kB of additional disk space will be used.
#    * Install Image Viewer: gpicview.
#    * Disk size = 1202076K. Space Used = 344K.