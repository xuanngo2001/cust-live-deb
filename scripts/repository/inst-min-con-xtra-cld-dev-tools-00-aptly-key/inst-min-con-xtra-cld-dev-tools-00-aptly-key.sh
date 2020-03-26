#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 

# Install key.
# aptly needs gnupg needs dirmngr
	apt-get -y install dirmngr gnupg
  
# Add keyring: https://www.aptly.info/download/
    url_key="https://www.aptly.info/pubkey.txt"
    deb_repo_key_file="${SCRIPT_NAME}.gpg"
    wget -q "${url_key}" -O "${deb_repo_key_file}"
    cat "${deb_repo_key_file}" | apt-key add -
    
# Add nightly build repository.
	GF_ADD_SOURCE_LIST live "deb http://repo.aptly.info/ squeeze main"


# Log
	echo "${GV_LOG} * Install Aptly key."
