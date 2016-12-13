#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Hope all dependencies are downloaded.
#apt-get install -d -y --force-yes libwebpdemux1 chromium

# Install dependencies
apt-get -y --force-yes install libappindicator1
apt-get -y --force-yes install libdbusmenu-glib4
apt-get -y --force-yes install libdbusmenu-gtk4
apt-get -y --force-yes install libindicator7
apt-get -y --force-yes install xdg-utils

apt-get -y --force-yes install gconf-service
apt-get -y --force-yes install libgconf-2-4
apt-get -y --force-yes install libxss1

# Recommended:
#apt-get -y --force-yes install indicator-application #obsolete.
#apt-get -y --force-yes install libfile-mimeinfo-perl
#apt-get -y --force-yes install libnet-dbus-perl
#apt-get -y --force-yes install libx11-protocol-perl
#apt-get -y --force-yes install x11-xserver-utils

# Install google-chrome.
dpkg -i google-chrome-stable_current_amd64.deb

# Get google-chrome version.
GOOGLE_CHROME_VERSION=$(google-chrome --version)
if [ -z "${GOOGLE_CHROME_VERSION}" ]; then
  GOOGLE_CHROME_VERSION="ERROR: google-chrome installation failed!"
fi

# Run Chromium as root.
cat bashrc-google-chrome-alias.txt >> /root/.bashrc


# Insert Google Chrome in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-google-chrome.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"



# Log
echo "${GV_LOG} * Install ${GOOGLE_CHROME_VERSION}."
echo "${GV_LOG} * Create an alias to run google-chrome as root."
echo "${GV_LOG} * Insert Google Chrome in Internet menu."
