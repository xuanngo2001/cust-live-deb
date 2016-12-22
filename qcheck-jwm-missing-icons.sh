#!/bin/bash
# Description: Check which icons are missing from JWM configuration files.

REPOSITORY_DIR=./scripts/repository/


# Add newline as a separation.
echo ""

while IFS='' read -r FILENAME || [[ -n "${FILENAME}" ]]; do
 
  ICON_CONTENT=$(grep 'icon=' "${FILENAME}" | sed 's/^.* icon=/icon=/' | sed 's/ .*//')
  ICON_CONTENT=$(echo "${ICON_CONTENT}" | sed 's/icon="//' | sed 's/".*//')
  
  if [ ! -z "${ICON_CONTENT}" ]; then
  
		while IFS='' read -r ICON_PATH || [[ -n "${ICON_PATH}" ]]; do    
			if [ ! -e "${ICON_PATH}" ]; then
			  echo "Error: ${ICON_PATH} not found: ${FILENAME}"
			fi
		done < <( echo "${ICON_CONTENT}" )
    
  fi 
 
done < <( find "${REPOSITORY_DIR}" -type f -name *.xml )

# Add newline as a separation.
echo ""  