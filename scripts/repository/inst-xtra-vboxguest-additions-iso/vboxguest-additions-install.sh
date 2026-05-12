vboxguest_additions_iso="VBoxGuestAdditions.iso"
if [ ! -f "$vboxguest_additions_iso" ]; then
    echo "Error: $vboxguest_additions_iso not found in the current directory."
    exit 1
fi

# Create a temporary directory to mount the ISO
temp_dir="/tmp/vboxguest_additions"
mkdir -p "$temp_dir"
# Mount the ISO
sudo mount -o loop "$vboxguest_additions_iso" "$temp_dir"

# Install the Guest Additions
(
    cd "$temp_dir"
    sudo sh VBoxLinuxAdditions.run
)

# Unmount the ISO and clean up
sudo umount "$temp_dir"
rm -rf "$temp_dir"

# Done.
echo "VirtualBox Guest Additions installation completed."