#!/bin/bash
set -e
# Description: Change configuration so that MS Edge can be ran as root.

# Run MS Edge as root. Consider: x-www-browser. 
	MS_EDGE=/usr/bin/microsoft-edge
	sed -i.original 's|exec -a "$0" "$HERE/msedge" "$@"$|exec -a "$0" "$HERE/msedge" "$@" --no-sandbox --user-data-dir|' "${MS_EDGE}"
