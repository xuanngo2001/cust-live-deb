#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly install dependent packages
  apt-get -y --force-yes install libsdl2-2.0-0   
  apt-get -y --force-yes install libmono-system-data4.0-cil
  apt-get -y --force-yes install libmono-system-numerics4.0-cil
  apt-get -y --force-yes install libmono-system-runtime-serialization4.0-cil
  apt-get -y --force-yes install libmono-system-xml-linq4.0-cil
  apt-get -y --force-yes install libmono-i18n4.0-all
  apt-get -y --force-yes install zenity

# Install openra.
  OPENRA_DEB=$(ls -1 openra_release.*_all.deb | sort -r | head -n1)
  dpkg -i "${OPENRA_DEB}"

# Log
echo "${GV_LOG} * Install openra."