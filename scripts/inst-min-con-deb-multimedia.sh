#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


DEB_MULTIMEDIA_KEYRING=deb-multimedia-keyring_2014.2_all.deb
DEB_MULTIMEDIA_KEYRING_SIZE=$(GF_SIZE_OF ${DEB_MULTIMEDIA_KEYRING})
dpkg -i ${DEB_MULTIMEDIA_KEYRING}
apt-get update
rm -f ${DEB_MULTIMEDIA_KEYRING}


# Log
echo "${GV_LOG} * Install ${DEB_MULTIMEDIA_KEYRING}."
echo "${GV_LOG} * apt-get update"
echo "${GV_LOG} * Delete ${DEB_MULTIMEDIA_KEYRING}[${DEB_MULTIMEDIA_KEYRING_SIZE}K]."

# Note:
# Key might change, see http://www.deb-multimedia.org/