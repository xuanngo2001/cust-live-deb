#!/bin/bash
set -e
# Description: Install Adobe Flash Player
#   Return: Adobe Flash Player name and version
#   Download: https://get.adobe.com/flashplayer/

flashplayer_gz=$1

# Error handling
if [ ! -f "${flashplayer_gz}" ]; then
  echo "Error: ${flashplayer_gz}: No such file. Aborted!"
  exit 1;
fi

# Adobe flash player directory creation.
adobe_flashplayer_dir=/usr/lib/adobe-flashplugin/
rm -rf "${adobe_flashplayer_dir}"
mkdir -p "${adobe_flashplayer_dir}"

# Unpack
tar -xzf "${flashplayer_gz}" -C "${adobe_flashplayer_dir}"

# Return Adobe Flash Player name and version
head -n3 "${adobe_flashplayer_dir}/readme.txt" | tail -n2 | xargs