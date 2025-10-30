#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 

# Install aegisub.
    apt-get -y install aegisub


# Log
    echo "${GV_LOG} * Install aegisub."
    echo "${GV_LOG} * Issue v3.2.2: sizer.cpp(2288): assert "CheckSizerFlags"
