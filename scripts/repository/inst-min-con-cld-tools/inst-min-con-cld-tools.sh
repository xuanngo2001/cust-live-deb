#!/bin/bash
set -e
set -o pipefail
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add custom live debian tool to /usr/local/bin/.
LOCAL_BIN=/usr/local/bin
for FILE_PATH in $(find tools/ -type f -name '*.sh')
do
  # Get the absolute path.
  FILE_PATH=$(readlink -ev "${FILE_PATH}")

  # Prepare variable name.
  SCRIPT_NAME=$(basename "${FILE_PATH}")
  LINK_NAME=$(echo ${SCRIPT_NAME} | sed 's/cld-//' | sed 's/\.sh//') # Create symbolic link without 'cld-' and '.sh'

  # Remove symbolic link regardless of whether it existed or not.
  rm -f ${LOCAL_BIN}/${LINK_NAME}
  
  # Copy scripts and create symbolic links.
  yes | cp ${FILE_PATH} ${LOCAL_BIN} && \
        echo "${GV_LOG} * Copied ${FILE_PATH} to ${LOCAL_BIN}/." && \
        ln -s ${LOCAL_BIN}/${SCRIPT_NAME} ${LOCAL_BIN}/${LINK_NAME}
        
done

# Make all scripts executable.
chmod +x ${LOCAL_BIN}/*.sh
