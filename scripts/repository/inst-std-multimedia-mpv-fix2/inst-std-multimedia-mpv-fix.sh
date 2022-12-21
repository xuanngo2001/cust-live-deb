#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
	apt-get install -s -y libsixel1
	apt-get install -s -y libtesseract4
	apt-get install -s -y libopencore-amrnb0 libopencore-amrwb0
    apt-get install -s -y libdjvulibre21 liblqr-1-0 libraqm0
    apt-get install -s -y libcjson1 libmbedcrypt

# Log
	echo "${GV_LOG} * 2022-12-14: Bullseye: libdjvulibre21_3.5.28-2_amd64.deb  404  Not Found [IP: ::1 80]."
