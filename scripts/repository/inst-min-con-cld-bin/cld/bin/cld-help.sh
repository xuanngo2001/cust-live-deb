#!/bin/bash
set -e
# Description: Display helps.
#   Add your help file in /usr/local/cld/doc/. (e.g. smartphone-help.txt)
#     If you want different variation, add symbolic link: cd .../cld/doc && ln -s smartphone-help.txt phone-help.txt 
#   Usage: cld-helph.sh smartphone
#   Note: from ../inst-min-con-cld-bin/cld/bin

topic=$1-help.txt
doc_dir=$(readlink -ev /usr/local/cld/doc/)

help_file="${doc_dir}/${topic}"

if [ ! -f "${help_file}" ]; then
  echo "$0: Error: ${help_file} no such file. Aborted!"
  exit 1;
fi

cat "${help_file}"
