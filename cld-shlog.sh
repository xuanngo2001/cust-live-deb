#!/bin/bash
# Description: Create md files from *.sh.log within ./logs/.

LOG_DIR=$1


# Error handling
  if [ ! -d "${LOG_DIR}" ]; then echo "Error: Log directory: ${LOG_DIR}: no such directory. Aborted!"; exit 1; fi;
  
LOG_DIR=$(readlink -ev "${LOG_DIR}")

# Create md directory.
MD_DIR="${LOG_DIR}/md"
mkdir -p "${MD_DIR}"
MD_DIR=$(readlink -ev "${MD_DIR}")

# Master md file.
MASTER_MD="${MD_DIR}/master-main.md"
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

  # Create md file.
  echo "${MD_CONTENT}" > "${MD_DIR}/$(basename ${SCRIPT_LOG}).md"
  
  # Append packages installed if exist.
  NEW_PACKAGES_MARKER="The following NEW packages will be installed:"
  #PKG_INSTALLED=$(echo "${LOG_CONTENT}" | sed -n "/${NEW_PACKAGES_MARKER}/,/^[^ *]/p" | grep '^  ' | tr ' ' '\n' | sort | uniq) # Get package list.
  PKG_INSTALLED=$(./cld--shlog-pkg-installed-extract.sh "${SCRIPT_LOG}")
  pkg_installed_formatted=$(echo "${PKG_INSTALLED}" | xargs -n5)  # Add newline for every 5 words.
  
  if [ $(echo "${PKG_INSTALLED}"| tr -d ' '| wc -w) -gt 0 ]; then
    echo "  * ${NEW_PACKAGES_MARKER}" >> "${MD_DIR}/$(basename ${SCRIPT_LOG}).md"
    echo '  ```bash'                  >> "${MD_DIR}/$(basename ${SCRIPT_LOG}).md"
    echo "${pkg_installed_formatted}" >> "${MD_DIR}/$(basename ${SCRIPT_LOG}).md"
    echo '  ```'                      >> "${MD_DIR}/$(basename ${SCRIPT_LOG}).md"
    
    # Create a new file to hold a list packages installed.
    echo "${PKG_INSTALLED}"           > "${MD_DIR}/$(basename ${SCRIPT_LOG}).deb.txt"
  fi

  
  # Append to master md file.
  cat "${MD_DIR}/$(basename ${SCRIPT_LOG}).md" >> "${MASTER_MD}"
 
done < <( find "${LOG_DIR}" -type f -name "*.sh.log" | sort )


