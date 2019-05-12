#!/bin/bash
set -e
SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Dependency needed from K4.14 -> K4.16.
	# Still valid on 2019-05-10
	#apt-get -y install libglapi-mesa=13.0.6-1+b2
	#apt-get -y install libglapi-mesa libgl1-mesa-glx
	
		
# Explicitly download dependent packages
	apt-get install -s -y libglapi-mesa libgl1-mesa-glx
		