#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Copy and setup dircolors configuration.
yes | cp -av ./cld/ /usr/local/


# Log
echo "${GV_LOG} * Set dircolors to use ${DIR_COLORS_FILE} to make ls more beautiful."