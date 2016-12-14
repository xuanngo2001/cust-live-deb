#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install dependencies.
apt-get -y --force-yes install libwebpdemux1

# Install chromium.
apt-get -y --force-yes install chromium


# Get chromium version.
CHROMIUM_VERSION=$(chromium --version)
if [ -z "${CHROMIUM_VERSION}" ]; then
  CHROMIUM_VERSION="ERROR: chromium installation failed!"
fi

# Run Chromium as root.
cat bashrc-chromium-alias.txt >> /root/.bashrc


# Insert Chromium in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-chromium.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"


# Log
echo "${GV_LOG} * Install ${CHROMIUM_VERSION}."
echo "${GV_LOG} * Create an alias to run chromium as root."
echo "${GV_LOG} * Insert Chromium in Internet menu."
