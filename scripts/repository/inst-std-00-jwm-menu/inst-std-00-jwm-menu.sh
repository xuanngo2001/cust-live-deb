#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add default standard menus in JWM.
	sed -i "/<JWM>/ r jwmrc-menus-standard.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
	echo "${GV_LOG} * Add default standard menus in JWM."
