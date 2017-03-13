#!/bin/bash
#set -e # Don't use this line. Otherwise, any error(e.g. command not found) will kick you out of chroot.

#########################################################
# All export variables and functions
# NOTE: Exporting a variable doesn't make it available to parent processes. Use source.
# Reference: http://stackoverflow.com/a/1158231
#########################################################

export CLD_DIR=/usr/local/cld
export CLD_BIN_DIR=/usr/local/cld/bin
export CLD_APP_DIR=/usr/local/cld/app
export CLD_BASHRC_DIR=/usr/local/cld/bashrc.d
export CLD_JWMRC_DIR=/usr/local/cld/app/jwm/jwmrc
export CLD_JWM_BOOTSTRAP_DIR=/usr/local/cld/app/jwm/bootstrap
export CLD_LOG_DIR=/usr/local/cld/log

###### VARIABLES ######
# Prefix this variable in echo to log echoed string. CLDS stands for Custom Live Debian System.
export GV_LOG="CLDS:"

# Log size of scripts.
export GV_INSTALL_SIZE=/root/scripts/main.size

# APT sources list file
export GV_SOURCES_LIST=/etc/apt/sources.list

# Folder containing settings and scripts files for Cust-Live-Deb
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
export GP_VALUES_FILE=$(readlink -ev load-global-values.txt)

# Log total size in kilobytes.
GF_LOG_TOTAL_SIZE ()
{
  # Load previous total size.
  . ${GP_VALUES_FILE}
  
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

# Add repository to sources.list
GF_ADD_SOURCE_LIST()
{
  # Usage: GF_ADD_SOURCE_LIST tmp "deb http://http.debian.net/debian jessie-backports main"

	TYPE=$(echo "$1" | tr '[:upper:]' '[:lower:]')
	SOURCE_LINE=$2

	# Which source list file to use?
	  SOURCE_FILE=""
	  case "${TYPE}" in
	    
	    tmp)
	      SOURCE_FILE=/etc/apt/sources.list
	      ;;
	  
	    live)
	      SOURCE_FILE=/etc/apt/sources.list.live
	      ;;
	      
	    *)
	      echo "${SCRIPT_NAME}: Error: Unknown type=>${TYPE}"
	      exit 1
	      ;;
	  esac


	# Add source list to corresponding file.
	  # If source list file doesn't, then create it.
	  if [ ! -f "${SOURCE_FILE}" ]; then
	    > "${SOURCE_FILE}"
	  fi
	  
	  # Add entry in source list file.
	  if ! grep -qF "${SOURCE_LINE}" "${SOURCE_FILE}"; then
	    echo "${SOURCE_LINE}" >> "${SOURCE_FILE}"
	  fi
}
export -f GF_ADD_SOURCE_LIST