#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly install dependent packages.
apt-get -y --force-yes install libavc1394-0
apt-get -y --force-yes install libavcodec56 
apt-get -y --force-yes install libavdevice56
apt-get -y --force-yes install libavfilter5 
apt-get -y --force-yes install libavformat56
apt-get -y --force-yes install libcrystalhd3
apt-get -y --force-yes install libiec61883-0
apt-get -y --force-yes install libopencore-amrnb0
apt-get -y --force-yes install libopencore-amrwb0
apt-get -y --force-yes install libsmbclient 
apt-get -y --force-yes install libvo-aacenc0
apt-get -y --force-yes install libvo-amrwbenc0
apt-get -y --force-yes install libzvbi0


# Install MPV.
apt-get -y --force-yes install mpv

# Add multiple aliases for MPV
cat bashrc-alias-mpv >> /root/.bashrc

# Add useful mpv keybindings settings.
MPV_CONFIG_DIR=/root/.config/mpv/
mkdir -p ${MPV_CONFIG_DIR} 
cat mpv-input.conf >> ${MPV_CONFIG_DIR}/input.conf

# Log
echo "${GV_LOG} * Install Media Player: $(mpv --version | head -n 1 | sed 's/(.*//')."
echo "${GV_LOG} * Add multiple aliases for MPV."
echo "${GV_LOG} * Add useful mpv keybindings settings."


# Dependencies:
###################
#  mpv : Depends: libavcodec56 (>= 10:2.6) but it is not going to be installed
#        Depends: libavdevice56 (>= 10:2.6) but it is not going to be installed
#        Depends: libavfilter5 (>= 10:2.6) but it is not going to be installed
#        Depends: libavformat56 (>= 10:2.6) but it is not going to be installed
#        Depends: libsmbclient (>= 2:4.0.3+dfsg1) but it is not installable
# 

#  libavcodec56 : Depends: libcrystalhd3 (>= 1:0.0~git20110715.fdd2f19) but it is not installable
#                 Depends: libzvbi0 (>= 0.2.33) but it is not installable
# 
# libavdevice56 : Depends: libavc1394-0 (>= 0.5.3) but it is not installable
#                  Depends: libavcodec56 (>= 10:2.6.8) but it is not going to be installed
#                  Depends: libavfilter5 (>= 10:2.6.8) but it is not going to be installed
#                  Depends: libavformat56 (>= 10:2.6.8) but it is not going to be installed
#                  Depends: libiec61883-0 (>= 1.2.0) but it is not installable
# 
# libavfilter5 : Depends: libavcodec56 (>= 10:2.6.8) but it is not going to be installed
#                 Depends: libavformat56 (>= 10:2.6.8) but it is not going to be installed
# 
# libavformat56 : Depends: libavcodec56 (>= 10:2.6.8) but it is not going to be installed
#  
#  libsmbclient