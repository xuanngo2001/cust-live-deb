rm -f binary/live/filesystem.squashfs
mksquashfs chroot binary/live/filesystem.squashfs -comp xz -e boot

CD_LABEL=cust-live-deb
DATE_STRING=`date +"%Y-%m-%d_%0k.%M.%S"`
ISO_FILENAME="${CD_LABEL}-64_${DATE_STRING}.iso"
genisoimage  -r -V ${CD_LABEL} -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ${ISO_FILENAME} binary/


# Log sizes
SIZE_LOG=sizes.log
echo "${ISO_FILENAME}" >> ${SIZE_LOG}
du -h -c binary | sed 's/^/   /' >> ${SIZE_LOG}
du -h -c -d 1 chroot | sed 's/^/   /' >> ${SIZE_LOG}
echo "" >> ${SIZE_LOG}

#TODO:
# Auto architecture.
# Add distribution name.
