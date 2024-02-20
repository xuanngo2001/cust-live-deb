#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
	apt-get install -s -y node-cacache 
	apt-get install -s -y node-cli-table3
	apt-get install -s -y node-got
	apt-get install -s -y node-negotiator

# Log
	echo "${GV_LOG} * Bullseye: 2022-12-16: Add required packages."