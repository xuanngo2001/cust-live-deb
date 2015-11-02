#!/bin/bash

#########################################################
# All export variables and functions
# NOTE: Exporting a variable doesn't make it available to parent processes. Use source.
# Reference: http://stackoverflow.com/a/1158231
#########################################################

###### VARIABLES ######
# Folder containing settings data.
export GV_SETTINGS_DIR=./settings

# Folder containing settings binary data.
export GV_BINARY_DIR=${GV_SETTINGS_DIR}/binary

# Prefix this variable in echo to log echoed string. CLDS stands for Custom Live Debian System.
export GV_LOG="CLDS:"

# Log size of scripts.
export GV_INSTALL_SIZE=/root/scripts/install.size

# APT sources list file
export GV_SOURCES_LIST=/etc/apt/sources.list

# Folder containing setting and scripts files for Cust-Live-Deb
export GV_CLD_ROOT_DIR=/root/cld
mkdir -p "${GV_CLD_ROOT_DIR}"

###### FUNCTIONS ######

# Size of file in kilobytes.
GF_SIZE_OF()
{
  if [ -f $1 ] || [ -d $1 ]
  then
    echo $(du -sk --exclude=/proc $1 | head -n 1 | cut -f1)
  else
    echo "ERROR: $1 not found."
  fi
}
export -f GF_SIZE_OF


# Use to exchange value variables between different script.
export GP_VALUES_FILE=load-global-values.txt

# Log total size in kilobytes.
GF_LOG_TOTAL_SIZE ()
{
  # Load previous total size.
  . ./${GP_VALUES_FILE}
  
  # Get current total size.
  CURRENT_TOTAL_SIZE=$(GF_SIZE_OF /)
  
  # Calculate space used.
  if [ -z "${PREV_TOTAL_SIZE}" ]; then PREV_TOTAL_SIZE=0; fi
  SPACE_USED=$((${CURRENT_TOTAL_SIZE}-${PREV_TOTAL_SIZE}))
  
  # Log total size.
  echo "${GV_LOG} * Disk size = ${CURRENT_TOTAL_SIZE}K. Space Used = ${SPACE_USED}K."
  
  # Update previous total size.
  echo "PREV_TOTAL_SIZE=${CURRENT_TOTAL_SIZE}" > ${GP_VALUES_FILE}
}
export -f GF_LOG_TOTAL_SIZE

