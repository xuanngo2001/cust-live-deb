AI: create isolinux with secure boot

https://www.google.com/search?q=create+isolinux+with+secure+boot&gs_lcrp=EgRlZGdlKgYIABBFGDkyBggAEEUYOTIICAEQ6QcY_FXSAQg3ODU0ajBqMagCALACAA&sourceid=chrome&ie=UTF-8&udm=50&fbs=AIIjpHxU7SXXniUZfeShr2fp4giZud1z6kQpMfoEdCJxnpm_3WBcADgXS0kQ7L92bqYkFCGs4piG0mmPDgZFV1TtUMvZh4b_hOslSO4BbJRk_Rm0ey3utATCo9AA0YQ0p5glWWWqrJfaR7aFSzqz7JTOfdw5t8AYg6QYF-6bAGJG4Oc0PsGAYYG6qADSUkQX19wBFddmtCGZ0IwnYFs19Mn55ZWS5v0bnA&ved=2ahUKEwiL4YT_k8yPAxVTrokEHX2iIqAQ0NsOegQIXhAA&aep=10&ntc=1&mtid=kl3AaLe1LqbcptQPiYaL4A4&mstk=AUtExfAZpNgoPjmp3oAlLX53cBw9UPTg0XDIZUSqDoynnaa_0kzIqfv9CLPuu775zR5--pxgE7Tg0wdNaGhGeJ0fIM29jABZEWd6QuMzYNFlqovlXqffvkiJc-bSkf6fANnuBRVsBZ5wmrcB8bMZWABH7rz_e0MvRbzIzha40-g9BEWQcDROvvbR9WX91T9EVEUR9fkewgtjX1BRyn4QVM3RRfGwNPyDxgsTB2S6DiGurroBGYBmioBe6o2B7jYVrgKSn762ar2twcP7Z3P-t0WbNUd3V6V00zDCvwcBIdVMurl_FOyR2cYSQEg_ngrQ2Z0eAApTFPos-F5Kig&csuir=1

# Get grub signed packages
    apt-get update
    apt-get -y install shim-signed grub-efi-amd64-signed


# Build /EFI/ folder
	mkdir -p ./secure-boot/EFI/BOOT

	# Copy signed shim and MokManager
	\cp /usr/lib/shim/shimx64.efi.signed ./secure-boot/EFI/BOOT/BOOTX64.EFI
	\cp /usr/lib/shim/mmx64.efi ./secure-boot/EFI/BOOT/MokManager.efi

	# Copy signed GRUB executable
	\cp /usr/lib/grub/x86_64-efi-signed/grubx64.efi.signed ./secure-boot/EFI/BOOT/grubx64.efi


# Step 4: Create the GRUB configuration file
mkdir -p ./secure-boot/boot/grub
cat > ./secure-boot/boot/grub/grub.cfg << EOF
# Boot Menu
set timeout=10

menuentry "Cust-Live-Deb (amd64)" {
    set gfxpayload=keep
    linux /live/vmlinuz boot=live toram persistence
    initrd /live/initrd
}

menuentry "Cust-Live-Deb (amd64 failsafe)" {
    set gfxpayload=keep
    linux /live/vmlinuz boot=live persistence config memtest noapic noapm nodma nomce nolapic nomodeset nosmp nosplash vga=normal
    initrd /live/initrd
}
EOF


# Step 5: Build the new ISO with xorriso

xorriso -as mkisofs \
   -r -V "Custom ISO" \
   -o custom.iso \
   -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat \
   -no-emul-boot -boot-load-size 4 -boot-info-table \
   -eltorito-alt-boot -e EFI/BOOT/BOOTX64.EFI -no-emul-boot \
   ./secure-boot



## AI
   how to create efi.img, set grub.cfg and then create ISO boot on UEFI using xorriso?

uefi ok: https://askubuntu.com/questions/625286/how-to-create-uefi-bootable-iso
