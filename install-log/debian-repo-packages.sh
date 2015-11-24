cat $1 | grep debian-repo | sed -e 's/.*main //' | cut -d ' ' -f 1
