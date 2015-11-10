#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install LibreOffice5
LO_NAME=LibreOffice_5.0.3_Linux_x86-64_deb
mkdir -p "${LO_NAME}"
LO_DIR=$(realpath "${LO_NAME}")
tar -xvzf ${GV_BINARY_DIR}/LibreOffice_5.0.3_Linux_x86-64_deb.tar.gz --strip-components=1 -C "${LO_DIR}"
cd "${LO_DIR}/DEBS"
dpkg -i *.deb
rm -rf "${LO_DIR}"
cd -

# Insert LibreOffice5 menu in Office
sed -i "/Office\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-office-libreoffice5.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

 
# Log
LO_VERSION=$(libreoffice5.0 --version | head -n1)
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