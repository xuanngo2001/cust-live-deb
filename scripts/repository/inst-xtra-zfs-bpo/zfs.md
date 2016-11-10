# Test
    # Create partition.
    zpool create -f zfs-dkms-bpo /dev/sdX
    
    # Create file in partition.
    echo $(date) > /zfs-dkms-bpo/file-in-zfs.txt
    
    #