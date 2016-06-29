#!/bin/bash
set -e
# Description: Build mjwm.

unzip -o master.zip
(
cd mjwm-master/
./autogen.sh
./configure --prefix=/usr
make
make install
) 