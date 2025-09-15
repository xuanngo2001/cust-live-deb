# Description: Create the latest Debian Live ISO with custom bootloader configuration.

# https://wiki.debian.org/RepackBootableISO#amd64_release_5.0.4

iso_volume_label="cust-live-deb"
output_iso="/media/sql/test_$(date +"%Y-%m-%d_%0k.%M.%S").iso"
squashfs="/media/sf_shared/dump/debian-live/filesystem.squashfs_min"
deb_live_iso="/media/sf_shared/dump/debian-live/debian-live-13.1.0-amd64-standard.iso"

# Mount the original ISO
    deb_live_working="/tmp/deb-live"
    mkdir -p $deb_live_working

    # Mount the original ISO
    mount -o loop $deb_live_iso $deb_live_working
    echo "Mounted $deb_live_iso to $deb_live_working"

# Copy boot/
    working="./working"
    mkdir -p "$working"
    \cp -av $deb_live_working/boot "$working"

# Copy isolinux/
    \cp -av $deb_live_working/isolinux "$working"

# # Use custom grub / isolinux cfg
    \cp -av ./config/boot/grub/* "$working/boot/grub/"
    \cp -av ./config/isolinux/*  "$working/isolinux/"

# # Copy live/
    mkdir -p "$working/live"
    \cp ../../binary/live/initrd "$working/live/"
    \cp ../../binary/live/vmlinuz "$working/live/"
    \cp "${squashfs}" "$working/live/filesystem.squashfs"

# Making iso
    xorriso -as mkisofs \
    -r -V  "${iso_volume_label}" \
    -o "${output_iso}" \
    -J -J -joliet-long -cache-inodes \
    -isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin \
    -b isolinux/isolinux.bin \
    -c isolinux/boot.cat \
    -boot-load-size 4 -boot-info-table -no-emul-boot \
    -eltorito-alt-boot \
    -e boot/grub/efi.img \
    -no-emul-boot -isohybrid-gpt-basdat -isohybrid-apm-hfsplus \
    "$working"

# Unmount the original ISO
    umount $deb_live_working
    echo "Unmounted $deb_live_working"

# Final step
    echo "Created ISO at $output_iso"
    echo "TODO:"
    echo "      Overwrite ./working/ to ../../binary"
    echo "      \cp -a working/boot/ working/isolinux/ ../../binary/"
    echo "      TEST: ./cust-live-deb/cld-mkiso.test.sh"