#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install dependencies
apt-get -y --force-yes install libappindicator1
apt-get -y --force-yes install libdbusmenu-glib4
apt-get -y --force-yes install libdbusmenu-gtk4
apt-get -y --force-yes install libindicator7
apt-get -y --force-yes install xdg-utils

apt-get -y --force-yes install gconf-service
apt-get -y --force-yes install libgconf-2-4
apt-get -y --force-yes install libxss1

# Install google-chrome.
dpkg -i google-chrome-stable_current_amd64.deb

# Get google-chrome version.
GOOGLE_CHROME_VERSION=$(google-chrome --version)
if [ -z "${GOOGLE_CHROME_VERSION}" ]; then
  GOOGLE_CHROME_VERSION="ERROR: google-chrome installation failed!"
fi

# Run Google Chrome as root.
GOOGLE_CHROME_BIN=/opt/google/chrome/google-chrome
sed -i.original "s/exec -a \"\$0\" \"\$HERE\/chrome\"  \"\$@\"$/exec -a \"\$0\" \"\$HERE\/chrome\"  \"\$@\" --no-sandbox/" "${GOOGLE_CHROME_BIN}"

# Insert Google Chrome in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-google-chrome.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"

# Add alias.
cat bashrc-google-chrome-alias.txt >> /root/.bashrc

# Log
echo "${GV_LOG} * Install ${GOOGLE_CHROME_VERSION}."
echo "${GV_LOG} * Modify ${GOOGLE_CHROME_BIN} to run google-chrome as root."
echo "${GV_LOG} * Insert Google Chrome in Internet menu."
echo "${GV_LOG} * Add google chrome alias, chrome."
echo "${GV_LOG} * Set default browser: update-alternatives --config x-www-browser."