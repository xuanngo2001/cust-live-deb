    # View file
    echo "ZFS $(modinfo zfs | grep ^version | tr -s ' ')"
    cat /zfs-dkms-bpo/file-in-zfs.txt