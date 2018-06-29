#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#   apt-get install -d -y <your-package> 

# Install ffmpeg.
apt-get -y install ffmpeg


# Log
echo "${GV_LOG} * Install ffmpeg."
echo "${GV_LOG} * https://trac.ffmpeg.org/wiki/Capture/Webcam"

# REJECTED because too complex command for webcam recording.
#   Space Used = 72180K.

