#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add mono-official-stable.list
  GF_ADD_SOURCE_LIST live "deb https://download.mono-project.com/repo/debian stable-jessie main"
  
# Add mono-project repository key.
  key_pub_file=xamarin.gpg
  if [ -f "${key_pub_file}" ]; then
    cat "${key_pub_file}" | apt-key add -
    echo "${GV_LOG} * Add mono-project keyring."
  else
    echo "${GV_LOG} * ERROR: ${SCRIPT_NAME} failed: ${key_pub_file} doesn't exist!"
  fi

# Log
  echo "${GV_LOG} * Install mono-keyring."

# Note: http://www.mono-project.com/download/stable/#download-lin-debian
#       https://github.com/mono/mono/issues/9891
#         wget https://download.mono-project.com/repo/xamarin.gpg
#         wget https://packages.microsoft.com/keys/microsoft.asc 
