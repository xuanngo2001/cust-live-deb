#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install lua scripts
XMPV=xmpv
LUA_DIR=/root/.config/mpv/scripts
mkdir -p ${LUA_DIR}
yes | cp ${XMPV}/*.lua ${LUA_DIR}

# Log
echo "${GV_LOG} * Install xmpv."



