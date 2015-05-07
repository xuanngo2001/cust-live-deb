# https://l3net.wordpress.com/2013/09/21/how-to-build-a-debian-livecd/
# http://willhaley.com/blog/create-a-custom-debian-live-environment/

aptitude -y install live-build squashfs-tools syslinux 

debootstrap --arch=amd64 jessie chroot file:/media/sf_shared/debian-apt-cache/Debian-8.0-jessie-64bit/ ./

chroot chroot
mount none -t proc /proc
mount none -t sysfs /sys
mount none -t devpts /dev/pts
export HOME=/root
export LC_ALL=C
export PS1="\e[01;31m(live):\W \$ \e[00m"


apt-get -y install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id
apt-get -y install linux-image-amd64 live-boot

### Clean up before creating ISO.
# apt-get clean
rm /var/lib/dbus/machine-id && rm -rf /tmp/*
umount /proc /sys /dev/pts
# exit

mkdir -p binary/live && mkdir -p binary/isolinux
cp chroot/boot/vmlinuz-* binary/live/vmlinuz
cp chroot/initrd.img* binary/live/initrd
rm -f binary/live/filesystem.squashfs
mksquashfs chroot binary/live/filesystem.squashfs -comp xz -e boot -noappend
cp /x/apps/iso/debnetinst/isolinux/isolinux.bin binary/isolinux/
cp /x/apps/iso/mintusb/menu.c32 binary/isolinux/


# ==================================================================

cat > binary/isolinux/isolinux.cfg <<EOF
ui menu.c32
prompt 0
menu title Boot Menu
timeout 300

label live-amd64
  menu label ^Live (amd64)
  menu default
  linux /live/vmlinuz
  append initrd=/live/initrd boot=live persistence quiet

label live-amd64-failsafe
  menu label ^Live (amd64 failsafe)
  linux /live/vmlinuz
  append initrd=/live/initrd boot=live persistence config memtest noapic noapm nodma nomce nolapic nomodeset nosmp nosplash vga=normal

endtext
EOF

# ==================================================================
OUTPUT_ISO
EXTRACTED_ISO_DIR
genisoimage  -r -V "cust-debdog" -cache-inodes -J -l -b isolinux/isolinux.bin -c isolinux/boot.cat -no-emul-boot -boot-load-size 4 -boot-info-table -o ${OUTPUT_ISO} ${EXTRACTED_ISO_DIR}


lb build noauto "${@}" 2>&1 | tee build.log