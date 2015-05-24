#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install unifont

# Log
echo "${GV_LOG} * Install font: unifont."

# Reference:
# http://unifoundry.com/unifont.html
# https://wiki.archlinux.org/index.php/Fonts#International_users

# REJECTION
# Asian characters in hanazono font are more beautiful than unifont.
#  * Running inst-min-con-xtra-fonts-unifont.sh ...
#    * After this operation, 44.5 MB of additional disk space will be used.
#    * Install font: unifont.
#    * Total size = 759632K. Space Used = 54256K.
#  * Running inst-min-con-xtra-fonts-asian.sh ...
#    * After this operation, 48.2 MB of additional disk space will be used.
#    * Install fonts-hanazono to display Asian characters correctly.
#    * Test it by opening website http://ctext.org/zh.
#    * Total size = 771284K. Space Used = 65972K.