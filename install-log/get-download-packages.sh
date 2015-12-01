#!/bin/bash
set -e
# Description: Get from the install log packages that are download from the internet.

# echo | get line starting with 'Get:' | Exclude localhost | Exclude '/DiffIndex ' | Exclude 'InRelease [' | Exclude 'Packages [' | Exclude 'Translation-en ['
GET_LINE=$(cat $1 | grep "^Get:" | grep -vF 'http://localhost/' | grep -vF '/DiffIndex ' | grep -vF 'InRelease [' | grep -vF 'Packages [' | grep -vF 'Translation-en [')
  
while IFS='' read -r LINE || [[ -n "${LINE}" ]]; do

  PACKAGE_NAME=$(echo "${LINE}" | cut -d ' ' -f 4)
  PACKAGE_VERSION=$(echo "${LINE}" | cut -d ' ' -f 6)
  echo "${PACKAGE_NAME}_${PACKAGE_VERSION}"

done < <( echo "${GET_LINE}" )