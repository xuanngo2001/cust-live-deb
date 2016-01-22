#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Set to use local repository first
#   http://askubuntu.com/a/153408
yes | cp -v preferences-local-repository /etc/apt/preferences.d/

# Set to skip installing recommended packages
APT_CONF_SKIP_REC_PKG=/etc/apt/apt.conf.d/skip-recommended-packages
echo 'APT::Install-Recommends "false"; APT::Install-Suggests "false";' >> ${APT_CONF_SKIP_REC_PKG}

# Log
echo "${GV_LOG} * Set APT to use local repository first."
echo "${GV_LOG} * Set APT to skip installing recommended packages."