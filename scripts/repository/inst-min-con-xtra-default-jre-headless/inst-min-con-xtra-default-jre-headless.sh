#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install default-jre.
	apt-get -y install default-jre-headless

# Get Java version
	JAVA_VER=$(java -version 2>&1 > /dev/null  | head -n1)

# Log
	echo "${GV_LOG} * Install ${JAVA_VER}."
	echo "${GV_LOG} * To install JAVA binary: https://wiki.debian.org/JavaPackage."

# JRE: Space Used = 160728K