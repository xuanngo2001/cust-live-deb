#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#   apt-get install -s -y <your-package> 

# Add key and repo source list
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg \
        | gpg --yes --dearmor -o /usr/share/keyrings/cloud.google.gpg
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
        | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Install google-cloud-cli.
    apt-get -y install google-cloud-cli

# Log
    echo "${GV_LOG} * Install google-cloud-cli."

# Display version
    gcloud version | sed "s/^/${GV_LOG} * /"
