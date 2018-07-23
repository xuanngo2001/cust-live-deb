#!/bin/bash
set -e

# Description: Create an iso-hybrid using chroot/.
# Requirements:

SYSTEM=$1
CHROOT_DIR=$2
IGNORE_ERROR=$3

# Error Handling
  CMD_EXAMPLES=$(printf "%s\n%s\n%s\n" \
                        "  e.g. $0 <SYSTEM> <CHROOT_DIR> <IGNORE_ERROR_IS_OPTIONAL>"\
                        "  e.g. $0 std /path/to/chroot/"\
                        "  e.g. $0 min /path/to/chroot/ ignore"\
                )
  if [ -z "${SYSTEM}" ]; then
    echo "Error: Please provide the system name. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  
  if [ ! -d "${CHROOT_DIR}" ]; then
    echo "Error: Chroot directory: ${CHROOT_DIR}: no such directory. Aborted!"
    echo "${CMD_EXAMPLES}"
    exit 1;
  fi
  CHROOT_DIR=$(readlink -ev "${CHROOT_DIR}")

IGNORE_ERROR=$(echo "${IGNORE_ERROR}" | tr '[:upper:]' '[:lower:]')

# Stop if there is error in main.log
##################################################################
MAIN_LOG=./logs/main.log
if [ "${IGNORE_ERROR}" != "ignore" ];
then
	if grep -E '^E:|ERROR:' ${MAIN_LOG} > /dev/null
	then
	  echo "Process stopped. There is error in ${MAIN_LOG}."
	  grep -E '^E:|ERROR:' ${MAIN_LOG} | sed 's/^/  /'
	  exit 1;
	fi
fi

# If system is not empty, do the followings.
##################################################################
if [ ! -z "${SYSTEM}" ]; then
  # Prefix main.size with system name.
  sed -i "/^${SYSTEM}:/b; s/^/${SYSTEM}: /" ./logs/main.size
  
  # Add system in the output file.
  SYSTEM="-${SYSTEM}"
fi

# Copy vmlinuz & initrd in binary/live/.
##################################################################
mkdir -p ./binary/live/
yes | cp ${CHROOT_DIR}/boot/vmlinuz-* ./binary/live/vmlinuz
yes | cp ${CHROOT_DIR}/boot/initrd.img-* ./binary/live/initrd
#yes | cp /lib/live/mount/medium/live/initrd ./binary/live/initrd
# Check if vmlinuz & initrd exist in binary/live/.
if [ ! -e ./binary/live/initrd ]; then
  echo "Error: ./binary/live/initrd is missing. ISO will not boot."
  exit 1;
fi
if [ ! -e ./binary/live/vmlinuz ]; then
  echo "Error: ./binary/live/vmlinuz is missing. ISO will not boot."
  exit 1;
fi

# Global variables.
##################################################################
YYYY_MM_DD=$(date +"%Y-%m-%d")
HH_MM_SS=$(date +"%0k.%M.%S")
DATE_STRING="${YYYY_MM_DD}_${HH_MM_SS}"


# Copy main.log & dpkg*.log in ISOHYBRID
##################################################################
yes | cp -av ${MAIN_LOG} binary/
yes | cp -av ./logs/dpkg*.log binary/
yes | cp -av ./logs/scripts-ls.lst.log binary/

# Backup log files in ./binary/ to ./install-log/
##################################################################
KERNEL_VERSION=$(cat binary/dpkg-no-version.log| grep 'linux-image-' | head -n1 | sed 's/linux-image-//')
CLD_LOGS_DIR="./install-log/cld${SYSTEM}_${DATE_STRING}_K${KERNEL_VERSION}"
mkdir -p "${CLD_LOGS_DIR}"
CLD_LOGS_DIR=$(readlink -ev "${CLD_LOGS_DIR}")
yes | cp -av ./binary/*.log "${CLD_LOGS_DIR}"

# Create squashfs.
##################################################################
# Delete chroot/root/scripts/.
rm -rf ${CHROOT_DIR}/root/scripts
rm -f ./binary/live/filesystem.squashfs
mkdir -p binary/live/
mksquashfs "${CHROOT_DIR}" ./binary/live/filesystem.squashfs -comp xz
# Note: Don't exclude /boot/. initrd.img & vmlinuz are needed for update-initramfs



# Create ISOHYBRID.
##################################################################
# Note: boot.cat is automatically created
APP_ID=cust-live-deb-64
ISO_FILENAME="${APP_ID}${SYSTEM}_${DATE_STRING}.iso"
xorriso -as mkisofs -r -J -joliet-long -l \
				-isohybrid-mbr /usr/lib/ISOLINUX/isohdpfx.bin -partition_offset 16 \
				-A "${APP_ID}"  \
				-V "${APP_ID}" \
				-b isolinux/isolinux.bin \
				-c isolinux/boot.cat -no-emul-boot -boot-load-size 4 \
				-boot-info-table \
				-o ${ISO_FILENAME} \
				./binary



# Log directories size.
##################################################################
SIZE_LOG=sizes.log
echo "${ISO_FILENAME}" >> ${SIZE_LOG}
du -h -c ./binary | sed 's/^/   /' >> ${SIZE_LOG}
du -h -c -d 1 "${CHROOT_DIR}" | sed 's/^/   /' >> ${SIZE_LOG}
echo "" >> ${SIZE_LOG}

#TODO:
# Auto architecture.
# Add distribution name.
# Create Hybrid ISO. https://wiki.archlinux.org/index.php/Remastering_the_Install_ISO
