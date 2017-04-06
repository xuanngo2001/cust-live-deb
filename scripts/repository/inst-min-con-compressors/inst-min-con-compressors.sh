#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install bzip2
apt-get -y --force-yes install rar
apt-get -y --force-yes install unrar
apt-get -y --force-yes install zip
apt-get -y --force-yes install unzip
apt-get -y --force-yes install p7zip

# Use new rar version due to segmentation fault with 'RAR 4.20' with linux-image-4.8.0-0.bpo.2-amd64-unsigned (4.8.11-1~bpo8+1) 
yes | cp -a ./rarlinux-x64-5.4.0/rar /usr/bin

# Add universal extractor.
yes | cp -av ./cld/  /usr/local

# Log
echo "${GV_LOG} * Install de/compressor: bzip2."
echo "${GV_LOG} * Install de/compressor: rar."
echo "${GV_LOG} * Install de/compressor: unrar."
echo "${GV_LOG} * Install de/compressor: unzip."
echo "${GV_LOG} * Install de/compressor: zip."
echo "${GV_LOG} * Install de/compressor: p7zip."
echo "${GV_LOG} * Add universal extractor."
echo "${GV_LOG} * Use new rar version due to segmentation fault with 'RAR 4.20' with linux-image-4.8.0-0.bpo.2-amd64-unsigned (4.8.11-1~bpo8+1)."


