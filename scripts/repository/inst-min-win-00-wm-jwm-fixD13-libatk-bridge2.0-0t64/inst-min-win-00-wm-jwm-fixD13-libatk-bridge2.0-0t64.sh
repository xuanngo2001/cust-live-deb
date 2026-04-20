#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
    apt-get install -s -y libatk-bridge2.0-0t64
<<<<<<< HEAD
    apt-get install -s -y libxres1 
    
=======
    apt-get install -s -y libxres1
>>>>>>> e86c73ecab752097c6b71fd38c354e9f1db8d339

# Install libatk-bridge2.0-0t64.
    # apt-get -y install libatk-bridge2.0-0t64=2.58.2-1~bpo13+1


# Log
    echo "${GV_LOG} * Install libatk-bridge2.0-0t64."
    echo "${GV_LOG} * Trixie: 2026-01-06: Force to install backport version instead of stable version."
