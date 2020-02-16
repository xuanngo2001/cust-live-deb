#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install nvidia-driver.
	apt-get -y install nvidia-driver


# Log
	echo "${GV_LOG} * Install nvidia-driver to fix freeze of nouveau driver: Nouveau system freeze fifo: SCHED_ERROR 0a [CTXSW_TIMEOUT]"
