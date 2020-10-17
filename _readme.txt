# New installation.
    # Ensure /media/imdb/chroot exits.
    
    # Set git account.
        git config --global user.email "xuan.ngo@example.com"
        git config --global user.name "Xuan Ngo"
    
    # Fetch repositories.
        git pull https://github.com/xuanngo2001/cust-live-deb.git
        git pull https://github.com/xuanngo2001/cust-live-deb.wiki.git
    
    # Make all script executable.
        (
            cd cust-live-deb
            find . -type f -name '*.sh' -exec chmod +x {} \;
            chmod +x ../cust-live-deb.wiki/git-common-commits.sh
        )
    
    # Download vbox.
        (
            cd /media/master/github/cust-live-deb/scripts/repository/inst-xtra-vboxguest-additions-iso
            ./VBoxGuestAdditions.sh
        )
        
    # Build system.
        ./build-cld.sh min
    
# Display package size and runtime of the latest build.
    ./home.sh

# List of total size.
    ./sort-size.sh | grep zclean-99 | sort | grep work_no_proxy > a.csv

# After running ./build.sh, check ./qcheck.sh log for:
    - error.
    - file or directory not found.
    
       
# When build ready, tag it.
    # Ensure everything is commit for CLD and Aptly repositories.
    ./tag-all.sh
    # Manually push to branch(e.g. buster)
