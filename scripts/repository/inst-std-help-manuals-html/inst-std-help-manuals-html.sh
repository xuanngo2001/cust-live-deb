#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Remove Help manuals in text format before adding the HTML format.
sed -i '/<Menu label="Help">/ , /<\/Menu>/{//!d}' "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Copy all documentations to ${HOME}/cld/docs.
  DOC_DIR=/usr/local/cld/doc
  mkdir -p ${DOC_DIR}
  yes | cp -R ../../settings/doc/cust-live-deb.wiki/*.html ${DOC_DIR}

# Overwrite manuals menu.
  yes | cp -av ./cld/  /usr/local

# Log
echo "${GV_LOG} * Add user & developer manuals in Help menu."
