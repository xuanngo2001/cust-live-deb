#!/bin/bash
set -e

# Description: Download the VBoxGuestAdditions.iso.

# http://download.virtualbox.org/virtualbox/

# Download ISO if not already exists.
URL=http://download.virtualbox.org/virtualbox/4.3.4/VBoxGuestAdditions_4.3.4.iso
ISO_FILE=$(basename $URL)
if [ ! -f "${ISO_FILE}" ]; then
  wget "${URL}"
fi

# Create symbolic link.
rm -f VBoxGuestAdditions.iso
ln -s VBoxGuestAdditions_4.3.4.iso VBoxGuestAdditions.iso