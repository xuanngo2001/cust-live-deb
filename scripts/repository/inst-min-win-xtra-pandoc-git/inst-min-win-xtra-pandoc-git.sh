#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install the latest version from Git
  PANDOC_DEB=$(find . -name 'pandoc*.deb' | sort -r | head -n1 )
  dpkg -i "${PANDOC_DEB}"

# Get the version number.
PANDOC_VER=$(pandoc --version | head -n1)

# Log
echo "${GV_LOG} * Install ${PANDOC_VER} from git."
