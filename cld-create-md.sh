#!/bin/bash
# Description: Extract chroot/root/scripts/install.log.ran and put logged info in README.md
#   Script name will be the root level list.
#   Logged line in script will be nested to the root level ist.

LOG_DIR=$1


# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;
  
LOG_DIR=$(readlink -ev "${LOG_DIR}")

# Create md directory.
MD_DIR="${LOG_DIR}/md"
mkdir -p "${MD_DIR}"
MD_DIR=$(readlink -ev "${MD_DIR}")

# Master md file.
MASTER_MD="${MD_DIR}/all-md-files.md"
rm -f "${MASTER_MD}"

# Processing log files.
GV_LOG="CLDS:"
while IFS='' read -r SCRIPT_LOG || [[ -n "$SCRIPT_LOG" ]]; do
  
  # Mark line to preserve.
  LOG_CONTENT=$(cat "${SCRIPT_LOG}" | sed "s/^After this operation, /${GV_LOG} * After this operation, /")
  
  # Get marked lines.
  MD_CONTENT=$(echo "${LOG_CONTENT}" | grep "${GV_LOG}")
  MD_CONTENT=$(echo "${MD_CONTENT}" | sed "s/${GV_LOG}>>>>>>>>>/* >>>>>>>>>/") # Turn script name as parent list.
  MD_CONTENT=$(echo "${MD_CONTENT}" | sed "s/${GV_LOG} \*/  */") # Turn list into sublist.

  # Create md files.
  echo "${MD_CONTENT}" > "${MD_DIR}/$(basename ${SCRIPT_LOG}).md"
  
  # Append to master md file.
  cat "${MD_DIR}/$(basename ${SCRIPT_LOG}).md" >> "${MASTER_MD}"
 
done < <( find "${LOG_DIR}" -type f -name "*.sh.log" | sort )