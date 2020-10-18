#!/bin/bash
set -e

# Description: Download the VBoxGuestAdditions.iso.
#     http://download.virtualbox.org/virtualbox/

URL=http://download.virtualbox.org/virtualbox/6.0.12/VBoxGuestAdditions_6.0.12.iso  # Buster: K5.20
URL=http://download.virtualbox.org/virtualbox/6.0.14/VBoxGuestAdditions_6.0.14.iso
URL=http://download.virtualbox.org/virtualbox/6.0.16/VBoxGuestAdditions_6.0.16.iso
URL=http://download.virtualbox.org/virtualbox/6.0.18/VBoxGuestAdditions_6.0.18.iso
URL=http://download.virtualbox.org/virtualbox/6.1.4/VBoxGuestAdditions_6.1.4.iso    # Clipboard doesn't work.
URL=http://download.virtualbox.org/virtualbox/6.1.2/VBoxGuestAdditions_6.1.2.iso
URL=http://download.virtualbox.org/virtualbox/6.1.6/VBoxGuestAdditions_6.1.6.iso

# Download ISO if not already exists.
    ISO_FILE=$(basename $URL)
    if [ ! -e "${ISO_FILE}" ]; then
        wget "${URL}"
        md5sum "${ISO_FILE}" >> VBoxGuestAdditions.md5

        \mv "${ISO_FILE}" VBoxGuestAdditions.iso
    fi

# Create symbolic link.
    ln -s VBoxGuestAdditions.iso "${ISO_FILE}" || true # Expect to fail if file exists.


