#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly list dependent packages
#	apt-get install -s -y <your-package> 
	apt-get -y install build-essential e2fslibs-dev libewf-dev libncurses5-dev 
	apt-get -y install libncursesw5-dev ntfs-3g-dev libjpeg-dev uuid-dev 
	apt-get -y install zlib1g-dev pkg-config dh-autoreconf git 
	apt-get -y install debhelper dwz

# Install testdisk-dev.
	# Get the source code from repository.
	    git clone https://git.cgsecurity.org/testdisk.git
	 
	# Compile.
	    cd testdisk
	    mkdir config
	    autoreconf --install -W all -I config
	    ./configure
	    make    
	 
	# Install.
	    make install


# Log
	echo "${GV_LOG} * Install testdisk-dev."
