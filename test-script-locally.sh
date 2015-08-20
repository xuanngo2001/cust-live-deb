#!/bin/bash
# Description: Test your installation script on your local system using your local repository.


# Error Handling
##################################################################
if [ -z "$1" ]; then
  echo "ERROR: Please provide your installation script that you would like to test."
  echo " e.g.: $0 scripts/repository/my_script.sh"
  exit 1
fi

if [ ! -e "$1" ] || [ ! -f "$1" ]; then
  echo "ERROR: "$1" : No such file."
  exit 1
fi

# Main 
##################################################################
SCRIPT_NAME="$(basename "$(test -L "$1" && readlink "$1" || echo "$1")")"
INITIAL_PATH=$(pwd)


## Change to local repository
DEB_REPO_URL=http://localhost/debian-repo/
SOURCE_LIST=/etc/apt/sources.list
cp ${SOURCE_LIST} ${SOURCE_LIST}.old
echo "deb http://localhost/debian-repo/ jessie main contrib non-free" > /etc/apt/sources.list
apt-get update

## Run script
cd scripts

cp repository/${SCRIPT_NAME} .
source load-global-vars-funcs.sh
./${SCRIPT_NAME}
rm -f ${SCRIPT_NAME} 
cd ..

## Restore sources.list
yes | cp ${SOURCE_LIST}.old ${SOURCE_LIST}