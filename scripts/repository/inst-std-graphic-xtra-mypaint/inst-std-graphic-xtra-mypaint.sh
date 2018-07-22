#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#   apt-get install -d -y <your-package> 

# Install mypaint.
  apt-get -y install mypaint

# Insert Mypaint menu in Graphics
  sed -i "/Graphics\">/ r jwmrc-menus-graphics-mypaint.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
  echo "${GV_LOG} * Install mypaint."
  

