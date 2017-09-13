#!/bin/bash
set -e
# Description: Enable magnet link in Chrome.
REQUIRED_BIN=google-chrome
if command -v "${REQUIRED_BIN}"; then
  (
    cd /usr/share/applications/
    desktop_file=transmission-gtk.desktop
    if [ -f ${desktop_file} ]; then
      xdg-mime default ${desktop_file} x-scheme-handler/magnet
    else
      echo "Error: ${desktop_file}: No such file. Aborted!"
    fi
  )
fi