#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Examples:
#   apt-get install -d -y --force-yes <your-package>  # Explicitly download dependent packages 

# Install stterm.
apt-get -y --force-yes install stterm

# Add alias.
cat bashrc-stterm-alias.txt >> /root/.bashrc

# Set stterm as the default emulator
#update-alternatives --set x-terminal-emulator /usr/bin/stterm

# Log
echo "${GV_LOG} * Install stterm."
echo "${GV_LOG} * Set stterm as the default emulator."