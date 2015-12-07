#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install required packages for goim.
apt-get -y --force-yes install golang-go
apt-get -y --force-yes install git

# Set GOPATH.
. bashrc-go-path
cat bashrc-go-path >> /root/.bashrc

# Install goim.
if [ -d ./go-workspace ]; then
  mkdir -p ./go-workspace
else
  echo "${GV_LOG} * Warning: To save bandwidth, pre-download goim: go get github.com/BurntSushi/goim ."
fi
ln -s $(readlink -e ./go-workspace) /root/go-workspace
go get github.com/BurntSushi/goim
yes | cp ./go-workspace/bin/goim /usr/local/bin

# Log
echo "${GV_LOG} * Install required packages for goim: golang-go."
echo "${GV_LOG} * Install goim from github.com/BurntSushi/goim."