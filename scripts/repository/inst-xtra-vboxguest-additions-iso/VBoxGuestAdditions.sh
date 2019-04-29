#!/bin/bash
set -e

# Description: Download the VBoxGuestAdditions.iso.
#     http://download.virtualbox.org/virtualbox/

URL=http://download.virtualbox.org/virtualbox/6.0.4/VBoxGuestAdditions_6.0.4.iso    # Stretch: K4.19
URL=http://download.virtualbox.org/virtualbox/6.0.6/VBoxGuestAdditions_6.0.6.iso

# Download ISO if not already exists.
ISO_FILE=$(basename $URL)
if [ ! -f "${ISO_FILE}" ]; then
  wget "${URL}"
  md5sum "${ISO_FILE}" >> VBoxGuestAdditions.md5
fi

# Create symbolic link.
rm -f VBoxGuestAdditions.iso
ln -s "${ISO_FILE}" VBoxGuestAdditions.iso