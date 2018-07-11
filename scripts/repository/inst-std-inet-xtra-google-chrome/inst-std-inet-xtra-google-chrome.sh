#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install dependencies
apt-get -y install libappindicator1
apt-get -y install libdbusmenu-glib4
apt-get -y install libdbusmenu-gtk4
apt-get -y install libindicator7
apt-get -y install xdg-utils

apt-get -y install gconf-service
apt-get -y install libgconf-2-4
apt-get -y install libxss1

apt-get -y install lsb-release

#apt-get -y install libpango1.0-0

# Install google-chrome.
apt-get -y install google-chrome-stable

# Get google-chrome version.
GOOGLE_CHROME_VERSION=$(google-chrome --version)
if [ -z "${GOOGLE_CHROME_VERSION}" ]; then
  GOOGLE_CHROME_VERSION="ERROR: google-chrome installation failed!"
fi

# Insert Google Chrome in Internet menu.
sed -i "/Internet\">/ r jwmrc-menus-inet-google-chrome.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Add alias.
yes | cp -av ./cld/ /usr/local/


# Run Google Chrome as root.
./run-google-chrome-as-root.sh

# Add google repository key.
  wget -O - https://dl.google.com/linux/linux_signing_key.pub | gpg --no-default-keyring --keyring trustedkeys.gpg --import
  
# Log
echo "${GV_LOG} * Install ${GOOGLE_CHROME_VERSION}."
echo "${GV_LOG} * Modify configuration to run google-chrome as root."
echo "${GV_LOG} * Insert Google Chrome in Internet menu."
echo "${GV_LOG} * Add google chrome alias, chrome."
echo "${GV_LOG} * Set default browser: update-alternatives --config x-www-browser."
echo "${GV_LOG} * Enable Flash: Run chrome://plugins and then disable and enable Flash. Test at https://www.google.com/finance?q=NASDAQ%3AAAPL"