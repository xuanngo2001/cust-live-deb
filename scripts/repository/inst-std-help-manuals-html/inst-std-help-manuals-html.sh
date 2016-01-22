#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Remove Help manuals in text format before adding the HTML format.
sed -i '/<Menu label="Help">/ , /<\/Menu>/{//!d}' "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Copy all documentations to /root/doc.
DOC_DIR=/root/cld-doc
mkdir -p ${DOC_DIR}
yes | cp -R ../../settings/doc/cust-live-deb.wiki/*.html ${DOC_DIR}

# Add user & developer manuals in Help menu.
sed -i "/Help\">/ r jwmrc-menus-help-manuals-html.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Add user & developer manuals in Help menu."
