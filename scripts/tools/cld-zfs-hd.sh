#!/bin/bash
set -e
# Description: Show ZFS pool hard drive informations: 
#   -pool name    : tank
#   -ata          : ataX
#   -device name  : /dev/sdX
#   -HD model     : ST3000DM001
#   -Serial number: 1CH288_Z1F59ABC

# Error handling: stop if zpool doesn't exit
ZPOOL_CMD=zpool
command -v ${ZPOOL_CMD} > /dev/null 2>&1 || { echo >&2 "ERROR: ${ZPOOL_CMD} not found."; exit 1; }

# Get ataX/sdX.
ATA_SD=tmp-ataX-sdX.txt
# Get ataX only | Delete up to ata | Delete from / to block/ | Remove last /
ls -al /sys/block/* | grep "/ata[0-9]*/" | sed -e 's/^.*\/ata/ata/' | sed 's/\/.*block\// /' | sed 's/\///' > ${ATA_SD}

ZFS_POOL=tmp-zfs-pool.txt
# Ignore line with : or NAME | Delete empty line | Remove 'ONLINE       0     0     0'
zpool status | grep -Ev ':|NAME' | sed -e '/^$/d' | sed 's/ONLINE       0     0     0//' > ${ZFS_POOL}
#zpool status | grep -Ev ':' | sed -e '/^$/d' | sed -e 's/NAME.*//' | sed 's/ONLINE       0     0     0//' > ${ZFS_POOL}

HD_ID_SD=tmp-hd-id-sd.txt
# Ignore -part | Get ata- only | Delete up to ata- | Delete after ->
ls -al /dev/disk/by-id/ | grep -v '\-part' | grep ' ata-' | sed -e 's/^.* ata-/ata-/' | sed -e 's/->.*\///' > ${HD_ID_SD}

# Add device name: sdX
while IFS='' read -r HD_ID_SD_LINE || [[ -n "$HD_ID_SD_LINE" ]]; do
  HD_ID=$(echo ${HD_ID_SD_LINE} | cut -d ' ' -f 1)
  
  DEVICE_NAME=$(echo ${HD_ID_SD_LINE} | cut -d ' ' -f 2)
  
  sed -i "/${HD_ID}/ {s/ata-/ata-${DEVICE_NAME}-/}" ${ZFS_POOL}
  
done < <( cat ${HD_ID_SD} )

# Add ataX
while IFS='' read -r ATA_SD_LINE || [[ -n "$ATA_SD_LINE" ]]; do
  ATA_NUM=$(echo ${ATA_SD_LINE} | cut -d ' ' -f 1)
  DEVICE_NAME=$(echo ${ATA_SD_LINE} | cut -d ' ' -f 2)
  sed -i "/${DEVICE_NAME}/ {s/ata-/${ATA_NUM}-/}" ${ZFS_POOL}
done < <( cat ${ATA_SD} )

# De-indent
sed -i "s/^\t//" ${ZFS_POOL}

# Print
echo "Hard drive ZFS pool"
echo "==================="
cat ${ZFS_POOL}
echo

# Clean up
rm -f ${HD_ID_SD}
rm -f ${ATA_SD}
rm -f ${ZFS_POOL}
