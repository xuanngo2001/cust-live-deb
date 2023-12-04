#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install dependent packages.

# Add keyring: https://cloud.google.com/sdk/docs/install
    url_key="https://packages.cloud.google.com/apt/doc/apt-key.gpg"
    deb_repo_key_file="${SCRIPT_NAME}.gpg"
    
    if [ ! -f "${deb_repo_key_file}" ]; then
    	wget -q "${url_key}" -O "${deb_repo_key_file}"
	fi
    cat "${deb_repo_key_file}" | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Log
	echo "${GV_LOG} * Install google-cloud repository key."
	
