#!/bin/bash
set -e
# Description: Link all files or directories in /usr/local/cld/home to $HOME

CLD_HOME_DIR=/usr/local/cld/home
user_home_dir=$(readlink -ev /root)
while IFS='' read -r line || [[ -n "${line}" ]]; do

  link_name=$(basename "${line}")
  rm -rf "${user_home_dir}/${link_name}"
  ln -s "${line}" "${user_home_dir}/${link_name}"

done < <(find ${CLD_HOME_DIR} -maxdepth 1 -mindepth 1) 