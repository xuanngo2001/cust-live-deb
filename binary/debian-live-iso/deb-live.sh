# https://wiki.debian.org/RepackBootableISO#amd64_release_5.0.4

# Mount the original ISO
    deb_live_iso="/media/sf_shared/dump/debian-live-13.1.0-amd64-standard.iso"
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

# Use custom grub.cfg
    \cp -v ./config/boot/grub/grub.cfg "$working/boot/grub/"

# Making iso
    xorriso -as mkisofs \
    -r -V 'Debian 9.3.0 amd64 n' \
    -o test.iso \
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