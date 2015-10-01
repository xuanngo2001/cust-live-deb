#!/bin/bash
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add custom live debian tool to /usr/local/bin/.
TOOLS_DIR=tools
LOCAL_BIN=/usr/local/bin
for FILE in $(ls -1 ${TOOLS_DIR}/*.sh)
do
  # Prepare variable name.
  SCRIPT_NAME=$(echo ${FILE} | sed "s/${TOOLS_DIR}\///") # Remove 'tools/'.
  LINK_NAME=$(echo ${SCRIPT_NAME} | sed 's/cld-//' | sed 's/\.sh//') # Create symbolic link without 'cld-' and '.sh'
  
  # Remove symbolic link regardless of whether it existed or not.
  rm -f ${LOCAL_BIN}/${LINK_NAME}
  
  # Copy scripts and create symbolic links.
  yes | cp ${FILE} ${LOCAL_BIN} && \
        echo "${GV_LOG} * Copied ${FILE} to ${LOCAL_BIN}/." && \
        ln -s ${LOCAL_BIN}/${SCRIPT_NAME} ${LOCAL_BIN}/${LINK_NAME}
        
done

# Make all scripts executable.
chmod +x ${LOCAL_BIN}/*.sh
