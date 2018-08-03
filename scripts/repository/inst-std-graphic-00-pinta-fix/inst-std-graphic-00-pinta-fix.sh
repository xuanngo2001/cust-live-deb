#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Explicitly download dependent packages
  apt-get install -d -y libmono-system-drawing4.0-cil
  apt-get install -d -y libmono-cairo4.0-cil
  apt-get install -d -y libmono-sharpzip4.84-cil


# Add mono-official-stable.list
  GF_ADD_SOURCE_LIST live "deb https://download.mono-project.com/repo/debian stable-jessie main"
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
  gpg --no-default-keyring --keyring trustedkeys.gpg --keyserver pool.sks-keyservers.net --recv-keys A6A19B38D3D831EF

# Log
  echo "${GV_LOG} * Pinta crashes with mono v4.6.2.7+dfsg-1. Hence, install higher version(5+)."
  
# Note: http://www.mono-project.com/download/stable/#download-lin-debian  
