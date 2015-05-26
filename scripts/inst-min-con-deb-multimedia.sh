#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install keyring.
DEB_MULTIMEDIA_KEYRING=${GV_BINARY_DIR}/deb-multimedia-keyring_2014.2_all.deb
DEB_MULTIMEDIA_KEYRING_SIZE=$(GF_SIZE_OF ${DEB_MULTIMEDIA_KEYRING})
dpkg -i ${DEB_MULTIMEDIA_KEYRING}
rm -f ${DEB_MULTIMEDIA_KEYRING}

# Add deb-multimedia sources list
# Ensure that these sources list have priority over the official repositories.
#   Put them below local repository but above official repository.
DEB_MULTIMEDIA_SRC_LIST=${GV_SETTINGS_DIR}/deb-multimedia-sources.list
cat ${DEB_MULTIMEDIA_SRC_LIST} >> ${GV_SOURCES_LIST}

# Update packages.
apt-get update

# Log
echo "${GV_LOG} * Install ${DEB_MULTIMEDIA_KEYRING}."
echo "${GV_LOG} * Add deb-multimedia sources list."
echo "${GV_LOG} * Delete ${DEB_MULTIMEDIA_KEYRING}[${DEB_MULTIMEDIA_KEYRING_SIZE}K]."
echo "${GV_LOG} * apt-get update"

# Note:
# Key might change, see http://www.deb-multimedia.org/