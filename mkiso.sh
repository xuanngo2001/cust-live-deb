rm -f binary/live/filesystem.squashfs
mksquashfs chroot binary/live/filesystem.squashfs -comp xz -e boot

DATE_STRING=`date +"%Y-%m-%d_%0k.%M.%S"`
genisoimage  -r -V cust-debdog -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o cust-live-deb-64_${DATE_STRING}.iso binary/

#TODO:
# Auto architecture.
# Add distribution name.
