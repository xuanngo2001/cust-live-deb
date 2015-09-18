#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install file manager: SpaceFM.
apt-get -y --force-yes install spacefm


# Log
echo "${GV_LOG} * Install file manager: SpaceFM."

# REJECTION:
# SpaceFM has ugly root red band on the menu bar.
#   * Running inst-std-accessories-spacefm.sh ...
#     * After this operation, 4,833 kB of additional disk space will be used.
#     * Install file manager: SpaceFM.
#     * Disk size = 2093072K. Space Used = 3620K.
#   * Running inst-std-accessories-thunar.sh ...
#     * After this operation, 9,728 kB of additional disk space will be used.
#     * Install File Manger: thunar, thunar-media-tags-plugin, thunar-archive-plugin, thunar-volman.
#     * Insert Thunar in Accessories menu.
#     * Disk size = 2108280K. Space Used = 5996K.

