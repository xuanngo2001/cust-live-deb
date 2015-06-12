#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

echo "${GV_LOG} * Zero size all documents in /usr/share/."
##########################################################
# Credit: written from Jbv for FoxyRoxyLinux
#         http://murga-linux.com/puppy/viewtopic.php?p=845275#845275
zerosize() { 
  if [ -e $1 ]; then
    find $* | while read file; do
        echo -n "."
        rm -f $file 
        touch $file
    done 
  fi
} 

    zerosize /usr/share/doc -type f -size +1c 
    zerosize /usr/share/doc -type l 

    zerosize /usr/share/man -type f -size +1c 
    zerosize /usr/share/man -type l 


    zerosize /usr/share/info -type f -size +1c 
    zerosize /usr/share/info -type l 

    zerosize /usr/share/gnome/help -type f -size +1c 
    zerosize /usr/share/gnome/help -type l 

    zerosize /usr/share/gtk-doc -type f -size +1c 
    zerosize /usr/share/gtk-doc -type l 

    chown -R man:root /usr/share/man
    
    echo ""