#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Log default total size.
# Don't know why GF_LOG_TOTAL_SIZE doesn't work.
	  # Load previous total size.
	  . ${G_VALUES_FILE}
	  
	  # Get current total size.
	  CURRENT_TOTAL_SIZE=$(du -s --exclude=/proc / | head -n 1 | cut -f1)
	  
	  # Calculate space used.
	  if [[ -z "${PREV_TOTAL_SIZE}" ]]; then PREV_TOTAL_SIZE=0; fi
	  SPACE_USED=$((${CURRENT_TOTAL_SIZE}-${PREV_TOTAL_SIZE}))
	  
	  # Log total size.
	  echo "${GV_LOG} * Total size = ${CURRENT_TOTAL_SIZE}K. Space Used = ${SPACE_USED}K."
	  
	  # Update previous total size.
	  echo "PREV_TOTAL_SIZE=${CURRENT_TOTAL_SIZE}" > ${G_VALUES_FILE}




# Execute base scripts in the following order:
./install-00-base.sh
./install-00-locale.sh

