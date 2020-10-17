#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install libreoffice.
	apt-get -y install libreoffice

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

# Size variations:
#inst-std-office-libreoffice-impress.sh;     4692
#inst-std-office-libreoffice-draw.sh;       17732
#inst-std-office-libreoffice-writer.sh;     41060
#inst-std-office-libreoffice-calc.sh;      398468
#										  461,952 KB

#inst-std-office-libreoffice-math.sh;     1828
#inst-std-office-libreoffice-impress.sh;  4700
#inst-std-office-libreoffice-draw.sh;    17732
#inst-std-office-libreoffice-writer.sh;  41068
#inst-std-office-libreoffice-calc.sh;    47228
#inst-std-office-libreoffice-base.sh;   364924
#									   477,480 KB
									   