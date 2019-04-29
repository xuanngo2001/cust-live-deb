#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install dependency.
apt-get -y install build-essential

# Compile ta-lib.org.
    tar -xvzf ta-lib-0.4.0-src.tar.gz
    (
        cd ta-lib
        ./configure --prefix=/usr
        make
        make install
    )
    rm -rf ta-lib

# Log
	echo "${GV_LOG} * Install ta-lib.org from source."
    echo "${GV_LOG} * wget http://prdownloads.sourceforge.net/ta-lib/ta-lib-0.4.0-src.tar.gz"
    echo "${GV_LOG} * Require later to: pip install TA-Lib"
