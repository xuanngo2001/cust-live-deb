#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install hardware info apps: hwinfo
apt-get -y --force-yes install hwinfo


# Log
echo "${GV_LOG} * Install hardware info apps: hwinfo."

# REJECTION: hwinfo takes too much space.
#  * Running inst-xtra-hwinfo.sh ...
#    * After this operation, 2,357 kB of additional disk space will be used.  (hwinfo)
#    * After this operation, 467 kB of additional disk space will be used.    (hardinfo)
#    * Install hardware info apps: hwinfo & hardinfo.
#    * Total size = 2504508K. Space Used = 3864K.