rm -f binary/live/filesystem.squashfs
mksquashfs chroot binary/live/filesystem.squashfs -comp xz -e boot

CD_LABEL=cust-live-deb
DATE_STRING=`date +"%Y-%m-%d_%0k.%M.%S"`
ISO_FILENAME="${CD_LABEL}-64_${DATE_STRING}.iso"
genisoimage  -r -V ${CD_LABEL} -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ${ISO_FILENAME} binary/

#TODO:
# Auto architecture.
# Add distribution name.
