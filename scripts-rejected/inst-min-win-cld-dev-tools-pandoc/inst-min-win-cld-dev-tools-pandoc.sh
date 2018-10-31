#!/bin/bash
set -e

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install pandoc to generate user manual.
apt-get -y install pandoc

app_version=$(pandoc --version | head -n 1)
# Log
echo "${GV_LOG} * Install pandoc to generate user manual."
echo "${GV_LOG} * ${app_version}."
