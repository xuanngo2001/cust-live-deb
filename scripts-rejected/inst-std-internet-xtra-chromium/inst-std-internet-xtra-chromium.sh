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


# Insert Chromium in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-chromium.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Run Chromium as root.
#sed -i.original "s/exec -a \"\$0\" \"\$HERE\/chrome\"  \"\$@\"$/exec -a \"\$0\" \"\$HERE\/chrome\"  \"\$@\" --no-sandbox/" /opt/google/chrome/google-chrome


# Log
echo "${GV_LOG} * Install ${CHROMIUM_VERSION}."
echo "${GV_LOG} * Modify to ${CHROMIUM_BIN} to run chromium as root."
echo "${GV_LOG} * Insert Chromium in Internet menu."
