#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install pandoc to generate user manual.
apt-get -y --force-yes install pandoc

# Copy all documentations to /root/doc.
DOC_DIR=/root/doc
yes | cp -R ${GV_SETTINGS_DIR}/doc ${DOC_DIR}

# Insert documentation: user manual in Help.
sed -i "/Help\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-help-user-std.xml" /root/jwmrc-menus.xml

# Insert documentation: developer manual in Help.
sed -i "/Help\">/ r ${GV_SETTINGS_DIR}/jwmrc-menus-help-dev.xml" /root/jwmrc-menus.xml

# Log
echo "${GV_LOG} * Install pandoc to generate user manual."
echo "${GV_LOG} * Add documentation: user manual."
echo "${GV_LOG} * Add documentation: developer manual."
