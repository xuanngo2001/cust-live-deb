#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install Office Suite: Excluding base & math
apt-get -y --force-yes install libreoffice-writer
apt-get -y --force-yes install libreoffice-calc
apt-get -y --force-yes install libreoffice-impress
apt-get -y --force-yes install libreoffice-draw
apt-get -y --force-yes install libreoffice-base
apt-get -y --force-yes install libreoffice-math

# Insert LibreOffice5 menu in Office
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
#  * Running inst-std-office-libreoffice.sh ...
#    * After this operation, 273 MB of additional disk space will be used.
#    * After this operation, 42.4 MB of additional disk space will be used.
#    * After this operation, 18.0 MB of additional disk space will be used.
#    * Install Office Suite: Word processor - libreoffice-writer.
#    * Install Office Suite: Spreadsheet - libreoffice-calc.
#    * Install Office Suite: Presentation - libreoffice-impress.
#    * Install Office Suite: Drawing - libreoffice-draw.
#    * NOT install Office Suite: Database - libreoffice-base.
#    * NOT install Office Suite: Equation - libreoffice-math.
#    * Disk size = 2439400K. Space Used = 420276K.

# REJECTION: All libreoffice applications.
#  * Running inst-std-office-libreoffice.sh ...
#    * After this operation, 273 MB of additional disk space will be used.
#    * After this operation, 42.4 MB of additional disk space will be used.
#    * After this operation, 18.0 MB of additional disk space will be used.
#    * After this operation, 9,899 kB of additional disk space will be used.
#    * After this operation, 1,497 kB of additional disk space will be used.
#    * Install LibreOffice 4.3.3.2 430m0(Build:2).
#    * Install Office Suite: Word processor.
#    * Install Office Suite: Spreadsheet.
#    * Install Office Suite: Presentation.
#    * Install Office Suite: Drawing.
#    * Install Office Suite: Database.
#    * Install Office Suite: Equation.
#    * https://wiki.documentfoundation.org/ReleasePlan
#    * Disk size = 2687820K. Space Used = 434064K.