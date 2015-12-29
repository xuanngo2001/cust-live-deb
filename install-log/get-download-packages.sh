#!/bin/bash
set -e
# Description: Get from the install log packages that are download from the internet.

INSTALL_LOG=$1

# Error handling
if [ -z "${INSTALL_LOG}" ]; then
  echo "Error: Install log file is required. Aborted!"
  echo " e.g.: $0 install.log-work_2015-12-01_10.31.57"
  exit 1; 
fi

if [ ! -f "${INSTALL_LOG}" ]; then
  echo "Error: ${INSTALL_LOG}: no such file. Aborted!"
  echo " e.g.: $0 install.log-work_2015-12-01_10.31.57"  
  exit 1; 
fi

INSTALL_LOG=$(readlink -ev "${INSTALL_LOG}")

# echo | get line starting with 'Get:' | Exclude localhost | Exclude '/DiffIndex ' | Exclude 'InRelease [' | Exclude 'Packages [' | Exclude 'Translation-en [' | Exclude 'Release.gpg ['
GET_LINE=$(cat "${INSTALL_LOG}" | grep "^Get:" | grep -vF 'http://localhost/' | grep -vF '/DiffIndex ' | grep -vF 'InRelease [' | grep -vF 'Packages [' | grep -vF 'Translation-en [' | grep -vF 'Release.gpg [')
  
while IFS='' read -r LINE || [[ -n "${LINE}" ]]; do

  PACKAGE_NAME=$(echo "${LINE}" | cut -d ' ' -f 4)
  PACKAGE_VERSION=$(echo "${LINE}" | cut -d ' ' -f 6)
  echo "apt-get download ${PACKAGE_NAME}=${PACKAGE_VERSION}"

done < <( echo "${GET_LINE}" )

echo "mv *.deb /var/cache/apt/archives/"