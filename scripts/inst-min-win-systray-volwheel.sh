#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."



# Install pre-requisite package for VolWheel.
apt-get -y --force-yes install libgtk2-trayicon-perl

# Install pre-requisite perl module: Shell 
export PERL_MM_USE_DEFAULT=1
export PERL_EXTUTILS_AUTOINSTALL="--defaultdeps"
cpan Shell

# Download binary from http://oliwer.net/b/volwheel.html
VOLWHEEL=volwheel-0.2.8
tar -xvzf ${GV_BINARY_DIR}/${VOLWHEEL}.tar.gz
cd ${VOLWHEEL}
./install.pl

# Add icons
mkdir -p /usr/local/share/volwheel/icons
cd icons/
yes | cp -a * /usr/local/share/volwheel/icons
cd ..

# Copy lib to System
cd lib/
yes | cp -a * /usr/lib/perl5
cd ..

# Clean up VolWheel folder
cd ..
rm -rf ${VOLWHEEL}

# Set VolWheel to run on JWN startup.
cat ${GV_SETTINGS_DIR}/jwmrc-startup-volwheel.sh >> /root/jwmrc-startup.sh

# Log
echo "${GV_LOG} * Install pre-requisite deb package: libgtk2-trayicon-perl."
echo "${GV_LOG} * Install pre-requisite perl module from CPAN: Shell." 
echo "${GV_LOG} * Install VolWheel from binary."
echo "${GV_LOG} * Set VolWheel to run on JWN startup."

# Reference:
# How to install VolWheel: https://debmintux.wordpress.com/2012/04/06/howto-install-perl-volwheel-volume-controller/