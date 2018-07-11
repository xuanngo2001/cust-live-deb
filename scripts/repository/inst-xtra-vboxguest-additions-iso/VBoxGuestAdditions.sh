#!/bin/bash
set -e

# Description: Download the VBoxGuestAdditions.iso.

# http://download.virtualbox.org/virtualbox/

# BAD ISO, linux headers not found: VBoxGuestAdditions_4.3.4.iso

URL=http://download.virtualbox.org/virtualbox/5.2.4/VBoxGuestAdditions_5.2.4.iso    # Stretch
URL=http://download.virtualbox.org/virtualbox/5.2.14/VBoxGuestAdditions_5.2.14.iso  # Stretch

# Download ISO if not already exists.
ISO_FILE=$(basename $URL)
if [ ! -f "${ISO_FILE}" ]; then
  wget "${URL}"
  md5sum "${ISO_FILE}" >> VBoxGuestAdditions.md5
fi

# Create symbolic link.
rm -f VBoxGuestAdditions.iso
ln -s "${ISO_FILE}" VBoxGuestAdditions.iso