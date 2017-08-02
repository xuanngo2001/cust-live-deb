#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y <your-package>  # Explicitly download dependent packages 

# Install libreoffice.
apt-get -y install libreoffice

#apt-get -t jessie-backports -y install libreoffice-writer
#apt-get -t jessie-backports -y install libreoffice-calc
#apt-get -t jessie-backports -y install libreoffice-impress
#apt-get -t jessie-backports -y install libreoffice-draw
#apt-get -t jessie-backports -y install libreoffice-base
#apt-get -t jessie-backports -y install libreoffice-math

# Insert LibreOffice menu in Office
sed -i "/Office\">/ r jwmrc-menus-office-libreoffice.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"
 
# Log
LO_VERSION=$(libreoffice --version | head -n1)
echo "${GV_LOG} * Install ${LO_VERSION}."
echo "${GV_LOG} * Install Office Suite: Word processor."
echo "${GV_LOG} * Install Office Suite: Spreadsheet."
echo "${GV_LOG} * Install Office Suite: Presentation."
echo "${GV_LOG} * Install Office Suite: Drawing."
echo "${GV_LOG} * Install Office Suite: Database."
echo "${GV_LOG} * Install Office Suite: Equation."
echo "${GV_LOG} * https://wiki.documentfoundation.org/ReleasePlan"

