#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install keyring.
DEB_MULTIMEDIA_KEYRING=deb-multimedia-keyring_2015.6.1_all.deb
DEB_MULTIMEDIA_KEYRING_SIZE=$(GF_SIZE_OF ${DEB_MULTIMEDIA_KEYRING})
dpkg -i ${DEB_MULTIMEDIA_KEYRING}
rm -f ${DEB_MULTIMEDIA_KEYRING}

#apt-get -y --force-yes install deb-multimedia-keyring

# Add deb-multimedia sources list
GF_ADD_SOURCE_LIST live "deb http://www.deb-multimedia.org jessie main non-free"

# Update packages.
apt-get update

# Log
echo "${GV_LOG} * Install ${DEB_MULTIMEDIA_KEYRING}."
echo "${GV_LOG} * Add deb-multimedia sources list."
echo "${GV_LOG} * Delete ${DEB_MULTIMEDIA_KEYRING}[${DEB_MULTIMEDIA_KEYRING_SIZE}K]."
echo "${GV_LOG} * apt-get update"

# Note:
# Key might change, see http://www.deb-multimedia.org/