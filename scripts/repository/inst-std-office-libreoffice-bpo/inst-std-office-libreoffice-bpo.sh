#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install Office Suite from jessie-backports.
GF_ADD_SOURCE_LIST live "deb http://http.debian.net/debian jessie-backports main contrib non-free"
apt-get update

# Explicitly download dependent packages
apt-get -t jessie-backports -d -y --force-yes install libpagemaker-0.0-0

# Install libreoffice.
apt-get -t jessie-backports -y --force-yes install libreoffice-writer
apt-get -t jessie-backports -y --force-yes install libreoffice-calc
apt-get -t jessie-backports -y --force-yes install libreoffice-impress
apt-get -t jessie-backports -y --force-yes install libreoffice-draw
apt-get -t jessie-backports -y --force-yes install libreoffice-base
apt-get -t jessie-backports -y --force-yes install libreoffice-math

# Insert LibreOffice menu in Office
sed -i "/Office\">/ r jwmrc-menus-office-libreoffice.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"
 
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

# REJECTION:
#  * Running inst-std-office-libreoffice-bp.sh ...
#    * After this operation, 287 MB of additional disk space will be used.
#    * After this operation, 43.8 MB of additional disk space will be used.
#    * After this operation, 17.0 MB of additional disk space will be used.
#    * After this operation, 9,910 kB of additional disk space will be used.
#    * After this operation, 1,610 kB of additional disk space will be used.
#    * Install LibreOffice 5.0.2.2 00m0(Build:2).
#    * Install Office Suite: Word processor.
#    * Install Office Suite: Spreadsheet.
#    * Install Office Suite: Presentation.
#    * Install Office Suite: Drawing.
#    * Install Office Suite: Database.
#    * Install Office Suite: Equation.
#    * https://wiki.documentfoundation.org/ReleasePlan
#    * Disk size = 2710340K. Space Used = 456568K.