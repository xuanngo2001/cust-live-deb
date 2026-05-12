#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 

# Install ngrok.
    apt-get -y install ngrok


# Log
    echo "${GV_LOG} * Install ngrok."
    echo "${GV_LOG} * Because I can´t use http://localhost:xxxx as callback URI for TikTok."
