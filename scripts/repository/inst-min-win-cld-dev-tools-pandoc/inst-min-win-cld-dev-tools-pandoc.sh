#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install pandoc to generate user manual.
apt-get -y --force-yes install pandoc

# Copy all documentations to /root/doc.
DOC_DIR=/root/cld-doc
mkdir -p ${DOC_DIR}
yes | cp -R doc/cust-live-deb.wiki/*.html ${DOC_DIR}

# Insert documentation: developer manual in Help.
sed -i "/Help\">/ r jwmrc-menus-help-dev.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Insert documentation: user manual in Help.
sed -i "/Help\">/ r jwmrc-menus-help-user.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install pandoc to generate user manual."
echo "${GV_LOG} * Add documentation: user manual."
echo "${GV_LOG} * Add documentation: developer manual."
