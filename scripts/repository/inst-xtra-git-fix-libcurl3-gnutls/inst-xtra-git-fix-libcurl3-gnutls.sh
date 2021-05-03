#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install libcurl3-gnutls.
	apt-get --allow-downgrades -y install libcurl3-gnutls=7.64.0-4+deb10u2


# Log
	echo "${GV_LOG} * 2021-05-03: Install libcurl3-gnutls to fix 'Failed sending HTTP2 data' error."
	echo "${GV_LOG} * https://superuser.com/a/1642989."
	echo "${GV_LOG} * https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=987187."
	
