#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
#	apt-get install -s -y <your-package> 

# Install default-jdk.
	apt-get -y install default-jdk

# Set JAVA_HOME.
    java_home_set_results=$(./java-set-home.sh)
    echo "# From ${SCRIPT_NAME}"    >  ./cld/bashrc.d/bashrc-java.sh
    echo "${java_home_set_results}" >> ./cld/bashrc.d/bashrc-java.sh

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
	echo "${GV_LOG} * Install default-jdk."
    echo "${GV_LOG} * ${java_home_set_results}."

# JDK: Space Used = 52,784K