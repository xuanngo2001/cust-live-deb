#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Add google repository key.
  key_pub_file=linux_signing_key.pub
  if [ -f "${key_pub_file}" ]; then
    cat "${key_pub_file}" | apt-key add -
    echo "${GV_LOG} * Add google keyring."
  else
    echo "${GV_LOG} * ERROR: ${SCRIPT_NAME} failed: ${key_pub_file} doesn't exist!"
  fi

# Log



