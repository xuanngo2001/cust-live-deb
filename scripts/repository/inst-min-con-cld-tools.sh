#!/bin/bash
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add custom live debian tool to /usr/local/bin/.
TOOLS_DIR=tools
LOCAL_BIN=/usr/local/bin/
for file in $(ls -1 ${TOOLS_DIR}/*.sh)
do
  yes | cp $file $LOCAL_BIN && echo "${GV_LOG} * Copied $file to $LOCAL_BIN."
done

# Make all scripts executable.
chmod +x $LOCAL_BIN/*.sh
