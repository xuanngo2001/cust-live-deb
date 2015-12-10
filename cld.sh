#!/bin/bash
set -e
# Description: Main script to create Cust-Live-Deb system.

SYSTEM=$(echo $1 | tr '[:upper:]' '[:lower:]')
DEB_REPO_URL=$(echo $2 | tr '[:upper:]' '[:lower:]')

## Error handling
####################
if [ "$#" -ne 2 ]; then
  echo "ERROR: Illegal number of parameters."
  echo "   e.g. $0 SYSTEM DEB_REPO_URL"
  echo "   e.g. $0 std http://ftp.debian.org/debian/"
  echo "   e.g. $0 min http://localhost/aptly-repo/"
  exit 1;
fi


### Main
####################
# Create manuals.
./cld-create-manuals.sh


# All below is a one-liner. Stop everything if any failure.
./cld-build-live.sh ${DEB_REPO_URL} && \
chroot chroot/ /bin/bash -c "cd /root/scripts; \
                                chmod +x setup-chroot.sh; \
																./setup-chroot.sh; \
																chmod +x scripts-ls.sh; \
																./scripts-ls.sh ${SYSTEM}; \
																chmod +x install.sh; \
																./install.sh" && \
./cld-mkiso.sh ${SYSTEM}

# Reference:
# chroot usage: http://stackoverflow.com/a/8157973
    
