#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Copy re-use-x scripts to /usr/local/bin/.
LOCAL_BIN=/usr/local/bin
RE_USE_X_DIR=$(readlink -ev re-use-x)

yes | cp -av "${RE_USE_X_DIR}"/*.sh "${LOCAL_BIN}"

# Make all scripts executable.
chmod +x ${LOCAL_BIN}/*.sh


# Log
echo "${GV_LOG} * Install re-use-x."