#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Explicitly download dependent packages
  apt-get install -s -y libmono-system-drawing4.0-cil
  apt-get install -s -y libmono-cairo4.0-cil
  apt-get install -s -y libmono-sharpzip4.84-cil

# Log
  echo "${GV_LOG} * Pinta crashes with mono v4.6.2.7+dfsg-1. Hence, install higher version(5+)."
  
# Note: http://www.mono-project.com/download/stable/#download-lin-debian  
