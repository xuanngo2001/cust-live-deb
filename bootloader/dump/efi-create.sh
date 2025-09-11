# AI: create secure boot using xorriso tutorial

truncate -s 8M efi.img
mkfs.vfat efi.img
mkdir -p esp_mount
sudo mount efi.img esp_mount
sudo cp -r EFI esp_mount/
sudo umount esp_mount
rmdir esp_mount

echo efi.img