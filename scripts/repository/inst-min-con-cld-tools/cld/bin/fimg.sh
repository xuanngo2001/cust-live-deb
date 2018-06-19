#!/bin/bash
# Description: Find all images from current directory.
#  Note: from ../inst-min-con-cld-tools/cld/bin

#http://stackoverflow.com/questions/16758105/linux-find-list-all-graphic-image-files-with-find
find . -type f -exec file {} \; | grep -o -P '^.+: \w+ image'
