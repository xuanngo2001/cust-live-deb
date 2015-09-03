#!/bin/bash
set -e
# Description: Main script to create Cust-Live-Deb system.

SYSTEM=$(echo $1 | tr '[:upper:]' '[:lower:]')
DEB_REPO_URL=$(echo $2 | tr '[:upper:]' '[:lower:]')

## Error handling
####################
if [ "$#" -ne 2 ]; then
  echo "Error: Illegal number of parameters."
  echo "   e.g. $0 SYSTEM DEB_REPO_URL"
fi


### Main
####################
# Update manuals.
./update-manual.sh


# All below is a one-liner. Stop everything if failed.
./build-live.sh ${DEB_REPO_URL} && \
  chroot chroot/ /bin/bash -c "cd /root/scripts; \
                               chmod +x scripts-ls.sh; \
                               ./scripts-ls.sh ${SYSTEM}; \
                               chmod +x install.sh; \
                               ./install.sh" && \
./mkiso.sh ${SYSTEM}

# Reference:
# chroot usage: http://stackoverflow.com/a/8157973
    
