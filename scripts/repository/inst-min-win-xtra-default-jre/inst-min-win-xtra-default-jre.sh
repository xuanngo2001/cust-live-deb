#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#   apt-get install -s -y <your-package> 

# Install default-jre.
    apt-get -y install default-jre

# Set JAVA_HOME.
    java_home_set_results=$(./java-set-home.sh)
    echo "# From ${SCRIPT_NAME}"    >  ./cld/bashrc.d/bashrc-java.sh
    echo "${java_home_set_results}" >> ./cld/bashrc.d/bashrc-java.sh

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
    echo "${GV_LOG} * Install default-jre."
    echo "${GV_LOG} * Needed for Sweet Home 3D: java.awt.AWTError: Assistive Technology not found."
    echo "${GV_LOG} * ${java_home_set_results}."

