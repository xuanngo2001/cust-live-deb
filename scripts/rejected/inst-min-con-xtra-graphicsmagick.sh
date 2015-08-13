#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install graphicsmagick to process image from command line.
apt-get -y --force-yes install graphicsmagick

# Log
echo "${GV_LOG} * Install graphicsmagick to process image from command line."


## REJECTION: imagemagick win for new feature and well documented. http://stackoverflow.com/a/5282269
#  * Running inst-min-con-xtra-graphicsmagick.sh ...
#    * After this operation, 8,770 kB of additional disk space will be used.
#    * Install graphicsmagick to process image from command line.
#    * Total size = 1542756K. Space Used = 10884K.
#  * Running inst-min-con-xtra-imagemagick.sh ...
#    * After this operation, 12.8 MB of additional disk space will be used.
#    * Install imagemagick to process image from command line.
#    * Total size = 1559792K. Space Used = 17036K.