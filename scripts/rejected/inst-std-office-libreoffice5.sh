#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install LibreOffice5
LO_GZ=${GV_BINARY_DIR}/LibreOffice_5.0.3_Linux_x86-64_deb.tar.gz
LO_WORK_DIR=LibreOffice_work
mkdir -p "${LO_WORK_DIR}"
LO_WORK_DIR=$(readlink -ev "${LO_WORK_DIR}")
tar -xvzf "${LO_GZ}" --strip-components=1 -C "${LO_WORK_DIR}"
cd "${LO_WORK_DIR}/DEBS"
dpkg -i *.deb
rm -rf "${LO_WORK_DIR}"
cd -

# Insert LibreOffice5 menu in Office
sed -i "/Office\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-office-libreoffice5.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Create symbolic link so that libreoffice still execute.
ln -s /usr/local/bin/libreoffice5.0 /usr/local/bin/libreoffice
 
# Log
LO_VERSION=$(libreoffice --version | head -n1)
echo "${GV_LOG} * Install ${LO_VERSION}."
echo "${GV_LOG} * Install Office Suite: Word processor."
echo "${GV_LOG} * Install Office Suite: Spreadsheet."
echo "${GV_LOG} * Install Office Suite: Presentation."
echo "${GV_LOG} * Install Office Suite: Drawing."
echo "${GV_LOG} * Install Office Suite: Database."
echo "${GV_LOG} * Install Office Suite: Equation."
echo "${GV_LOG} * Create symbolic link so that libreoffice still execute."
echo "${GV_LOG} * https://wiki.documentfoundation.org/ReleasePlan"

# REJECTION:
#  * Running inst-std-office-libreoffice5.sh ...
#    * Install LibreOffice 5.0.3.2 e5f16313668ac592c1bfb310f4390624e3dbfb75.
#    * Install Office Suite: Word processor.
#    * Install Office Suite: Spreadsheet.
#    * Install Office Suite: Presentation.
#    * Install Office Suite: Drawing.
#    * Install Office Suite: Database.
#    * Install Office Suite: Equation.
#    * Create symbolic link so that libreoffice still execute.
#    * https://wiki.documentfoundation.org/ReleasePlan
#    * Disk size = 2978364K. Space Used = 724604K.
