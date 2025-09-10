# https://askubuntu.com/questions/1110651/how-to-produce-an-iso-image-that-boots-only-on-uefi

BOOT_IMG_DATA=$(mktemp -d)
BOOT_IMG=$(mktemp -d)/efi.img

mkdir -p $(dirname $BOOT_IMG)

truncate -s 8M $BOOT_IMG
mkfs.vfat $BOOT_IMG
mount $BOOT_IMG $BOOT_IMG_DATA
mkdir -p $BOOT_IMG_DATA/EFI/BOOT

grub-mkimage \
    -C xz \
    -O x86_64-efi \
    -p /boot/grub \
    -o $BOOT_IMG_DATA/EFI/BOOT/BOOTX64.EFI \
    boot linux search normal configfile \
    part_gpt btrfs ext2 fat iso9660 loopback \
    test keystatus gfxmenu regexp probe \
    efi_gop efi_uga all_video gfxterm font \
    echo read ls cat png jpeg halt reboot

umount $BOOT_IMG_DATA
rm -rf $BOOT_IMG_DATA

\cp -av $BOOT_IMG ./boot/grub