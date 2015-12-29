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
ln -s $(readlink -ev ./go-workspace) /root/go-workspace
go get github.com/BurntSushi/goim
yes | cp ./go-workspace/bin/goim /usr/local/bin

# Log
echo "${GV_LOG} * Install required packages for goim: golang-go."
echo "${GV_LOG} * Install goim from github.com/BurntSushi/goim."

# REJECTION: Too big.
#   * Running inst-xtra-imdb-goim.sh ...
#     * After this operation, 159 MB of additional disk space will be used.
#     * After this operation, 23.2 MB of additional disk space will be used.
#     * Disk size = 4161540K. Space Used = 215516K.
#   * Running inst-xtra-imdb-python-imdbpy.sh ...
#     * After this operation, 990 kB of additional disk space will be used.
#     * Install IMDbPY.
#     * Disk size = 4163692K. Space Used = 2152K.