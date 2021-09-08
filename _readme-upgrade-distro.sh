# Upgrade to the next distro: e.g. from Buster to Bullseye


# ######### CLD ###################
# Commit everything and create an new branch with new release name.

# Rename live source list.
    sed -i 's/buster/bullseye/g' ./scripts/repository/inst-min-con-00-apt-custom-repository/sourceslist-live.sh
    
# Rename main *.sh scripts.
    sed -i 's/buster/bullseye/g' build-cld.sh cld-debootstrap.sh

# Aptly
    (
        cd ../aptly/;
        ./update-bullseye.sh;
        ./aptly--list-urls.sh
    )
    
    # Check apt-get update is working locally.
        apt-get update
        # If error on repo url, comment them out from ./aptly/sources.list.bullseye

# Build min system.
    ./build-cld.sh min

# Test: Boot with min system and check for Debian release name.
    cat /etc/os-release
    
################# USELESS ############################################
# Add persistence partition.
	cd /media/persistence/
	cld-persistence.sh 11264
	reboot
	df	# Should see /run/live/persistence/loop1
	
# Upgrade local system to new release name.
    big_tmp_dir=/media/deb-repo-06/tmp
    mkdir -p "${big_tmp_dir}"
    
    # Add more memory: Allocate 7GB of disk space for swap file.
        fallocate -l 4G "${big_tmp_dir}"/swapfile
        chmod 600 "${big_tmp_dir}"/swapfile
        mkswap "${big_tmp_dir}"/swapfile
        swapon "${big_tmp_dir}"/swapfile

    # Increase size for /var/cache/apt
        (
            cd /var/cache/;
            \cp -a apt "${big_tmp_dir}"
            rm -rf apt
            ln -s "${big_tmp_dir}"/apt apt
        )
        
    # Upgrade.
	
        sed -i 's/buster/bullseye/g' /etc/apt/sources.list
        apt-get update	# Check URLs are online.
        apt-get dist-upgrade -y

    # Remaster live system.
	cld-remaster.sh /path/to/WORKING/
	cld-mkiso.sh /path/to/WORKING/
