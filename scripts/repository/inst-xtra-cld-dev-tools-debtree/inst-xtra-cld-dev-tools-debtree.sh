#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# To view dependencies of packages. Better package selections.
apt-get -y --force-yes install debtree graphviz

# To save bandwidth and faster download. Deb packages will be fetched locally.
# http://askubuntu.com/questions/53443/how-do-i-ignore-a-proxy-if-not-available
#https://help.ubuntu.com/community/Apt-Cacher-Server
#apt-get -y --force-yes install apt-cacher-ng

# sed 's/\//\/\/127.0.0.1:3142/' sources.list

# Log
echo "${GV_LOG} * Install debtree and graphviz to view dependencies of packages. Better package selections."
