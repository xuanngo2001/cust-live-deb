#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add nightly build repository.
  GF_ADD_SOURCE_LIST live "deb http://repo.aptly.info/ squeeze main"

# Add repository key: https://www.aptly.info/pubkey.txt
  #apt-key add pubkey.txt
  apt-get update

# aptly needs gnupg needs dirmngr
  apt-get -y install dirmngr

# Install aptly
  apt-get -y install xz-utils aptly
	#apt-get -y install gpgv1 gnupg1   # Aptly still uses PGP v1.
	#apt-get -y install aptly dirmngr gnupg gnupg-l10n gnupg-utils gpg gpg-agent gpg-wks-client gpg-wks-server gpgconf gpgsm libassuan0 libksba8 libnpth0 pinentry-curses
  

# Add to CLD/
	yes | cp -av ./cld  /usr/local

# Log
  echo "${GV_LOG} * Add aptly nightly build repository."
  echo "${GV_LOG} * Install $(aptly version) to create local debian repository."
  echo "${GV_LOG} * Add xz-utils package because aptly snapshot merge needs it." 


# Get key
#   -wget -q https://www.aptly.info/pubkey.txt
