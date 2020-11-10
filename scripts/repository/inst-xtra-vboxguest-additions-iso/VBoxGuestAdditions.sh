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
URL=http://download.virtualbox.org/virtualbox/6.1.14/VBoxGuestAdditions_6.1.14.iso
URL=http://download.virtualbox.org/virtualbox/6.0.24/VBoxGuestAdditions_6.0.24.iso
URL=http://download.virtualbox.org/virtualbox/6.1.16/VBoxGuestAdditions_6.1.16.iso

# Download ISO if not already exists.
    vbox_iso_txt="VBoxGuestAdditions.iso.txt"
    dled_iso=$(cat "${vbox_iso_txt}")
    iso_file=$(basename $URL)

    if [ "${iso_file}" == "${dled_iso}" ]; then
        echo "Warning: already downloaded: ${iso_file}."
    else
        wget "${URL}"
        md5sum "${iso_file}" >> VBoxGuestAdditions.md5
        
        echo "${iso_file}" > "${vbox_iso_txt}"
        
        \mv "${iso_file}" VBoxGuestAdditions.iso
    fi
