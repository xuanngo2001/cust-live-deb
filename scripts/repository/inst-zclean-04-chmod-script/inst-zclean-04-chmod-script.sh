#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Make *.sh under /usr/local/cld/ executable.
  find /usr/local/cld -name '*.sh' -type f -execdir chmod +x {} \; -execdir echo "chmod {}" \;
  
# Log
  echo "${GV_LOG} * Make *.sh under /usr/local/cld/ executable."
  
