#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install web browser: iceweasel.
apt-get -y --force-yes install iceweasel
apt-get -y --force-yes install flashplugin-nonfree

# Log
echo "${GV_LOG} * Install web browser: iceweasel."
echo "${GV_LOG} * To update Adobe Flash Player: update-flashplugin-nonfree --install."
echo "${GV_LOG} * To test Adobe Flash Player: http://www.cmegroup.com/trading/interest-rates/countdown-to-fomc.html."


# Resource:
#   https://wiki.debian.org/Iceweasel