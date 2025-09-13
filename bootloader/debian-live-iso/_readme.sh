# Concept
    - Download Debian Live ISO and use its boot files to create a custom live ISO.
    - Replace the live filesystem with a custom one.
    - Use a custom GRUB configuration to boot the custom live system.
    - Bootloader: ISOLINUX + GRUB EFI: ./config/boot/grub/grub.cfg(Hyper-V) + ./config/isolinux/live.cfg (VirtualBox)

    - Overwrite ./working/ to ../../binary

# Workflow
    ./deb-live.sh; rm -f /media/sf_shared/test.iso; \mv /media/sql/test*.iso  /media/sf_shared/; echo "Done"

# Ref:
    - # https://wiki.debian.org/RepackBootableISO#amd64_release_5.0.4