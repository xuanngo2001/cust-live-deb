# Create squashfs
rm -f binary/live/filesystem.squashfs
mksquashfs chroot binary/live/filesystem.squashfs -comp xz -e boot

# Copy install.log in ISOHYBRID
INSTALL_LOG=chroot/root/scripts/install.log
yes | cp ${INSTALL_LOG} binary/

# Create ISOHYBRID.
# Note: boot.cat is automatically created
CD_LABEL=cust-live-deb
DATE_STRING=`date +"%Y-%m-%d_%0k.%M.%S"`
ISO_FILENAME="${CD_LABEL}-64_${DATE_STRING}.iso"
xorriso -as mkisofs -r -J -joliet-long -l -cache-inodes \
				-isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin -partition_offset 16 \
				-A "${CD_LABEL}"  -b isolinux/isolinux.bin \
				-c isolinux/boot.cat -no-emul-boot -boot-load-size 4 \
				-boot-info-table \
				-o ${ISO_FILENAME} \
				binary

# Update README.md
./update-readme.sh

# Log directories size.
SIZE_LOG=sizes.log
echo "${ISO_FILENAME}" >> ${SIZE_LOG}
du -h -c binary | sed 's/^/   /' >> ${SIZE_LOG}
du -h -c -d 1 chroot | sed 's/^/   /' >> ${SIZE_LOG}
echo "" >> ${SIZE_LOG}

#TODO:
# Auto architecture.
# Add distribution name.
# Create Hybrid ISO. https://wiki.archlinux.org/index.php/Remastering_the_Install_ISO
