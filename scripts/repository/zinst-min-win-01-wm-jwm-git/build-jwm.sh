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

INITIAL_LOCATION=$(readlink -e .)

# Create working folder.
JWM_WORK_DIR=jwm
rm -rf "${JWM_WORK_DIR}"
mkdir -p "${JWM_WORK_DIR}"
cd ${JWM_WORK_DIR}

# Decompress.
JWM_GZ=jwm-2.3.4.tar.gz
tar -xvzf "${JWM_GZ}" --strip-components=1 -C "${JWM_WORK_DIR}"

# Build JWM
cd ${JWM_WORK_DIR}
autoreconf
./configure
make
make install

cd ${INITIAL_LOCATION}

# Log
echo "${GV_LOG} * Install dependencies: dh-autoreconf."


# Reference:
#   -https://wiki.archlinux.org/index.php/JWM#Minimal_PKGBUILD_example
# xsltproc templet.xsl inputfile.xml

