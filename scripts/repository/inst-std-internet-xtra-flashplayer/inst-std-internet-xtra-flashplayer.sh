#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

adobe_flashplayer_version=$(./adobe-flashplayer-install.sh flash_player_ppapi_linux.x86_64.tar.gz)

# Log
echo "${GV_LOG} * Install flashplayer: ${adobe_flashplayer_version}."