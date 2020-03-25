#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install dependent packages.
	apt-get -y install dirmngr gnupg

# Add keyring: 
    url_key="https://dl.google.com/linux/linux_signing_key.pub"
    deb_repo_key_file="${SCRIPT_NAME}.gpg"
    wget -q "${url_key}" -O "${deb_repo_key_file}"
    cat "${deb_repo_key_file}" | apt-key add -


# Log
	echo "${GV_LOG} * Install Google repository key."
