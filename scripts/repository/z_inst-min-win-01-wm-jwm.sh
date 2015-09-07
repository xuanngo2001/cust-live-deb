#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install dependencies: dh-autoreconf.
apt-get -y --force-yes install dh-autoreconf
apt-get -y --force-yes install libx11-dev

INITIAL_LOCATION=$(realpath .)
JWM_WORK_DIR=${GV_BINARY_DIR}/jwm
cd ${JWM_WORK_DIR}
JWM_FILENAME=jwm-s1263.tar.gz
tar -xvzf ${JWM_FILENAME}.tar.gz
cd ${JWM_FILENAME}
autoreconf
./configure
make
make install

cd ${INITIAL_LOCATION}

# Log
echo "${GV_LOG} * Install dependencies: dh-autoreconf."


# Reference:
#   -https://wiki.archlinux.org/index.php/JWM#Minimal_PKGBUILD_example

