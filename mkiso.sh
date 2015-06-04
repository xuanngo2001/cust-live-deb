#!/bin/bash
set -e

# Description: Create an iso-hybrid.
# Requirements:

# Create squashfs
rm -f binary/live/filesystem.squashfs
mksquashfs chroot binary/live/filesystem.squashfs -comp xz -e boot

# Copy install.log in ISOHYBRID
INSTALL_LOG=chroot/root/scripts/install.log
yes | cp ${INSTALL_LOG} binary/

# Create ISOHYBRID.
# Note: boot.cat is automatically created
YYYY_MM_DD=$(date +"%Y-%m-%d")
HH_MM_SS=$(date +"%0k.%M.%S")
DATE_STRING="${YYYY_MM_DD}_${HH_MM_SS}"
APP_ID=cust-live-deb-64
ISO_FILENAME="${APP_ID}_${DATE_STRING}.iso"
xorriso -as mkisofs -r -J -joliet-long -l -cache-inodes \
				-isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin -partition_offset 16 \
				-A "${APP_ID}"  \
				-V "${APP_ID}" \
				-b isolinux/isolinux.bin \
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
