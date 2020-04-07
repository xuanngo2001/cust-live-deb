cp aptly-gpg-generate-keys.sh.public.key.pub ../cust-live-deb/scripts/repository/inst-min-con-00-apt-custom-repository/



gpg --no-default-keyring -a --export A03BE326C0EF29A4 \
    | gpg --no-default-keyring --keyring ~/.gnupg/trustedkeys.gpg --import -
    
yes | cp /etc/apt/trusted.gpg.d/trustedkeys.gpg scripts/repository/inst-min-con-00-apt-custom-repository/
yes | cp /etc/apt/trusted.gpg                   scripts/repository/inst-min-con-00-apt-custom-repository/
yes | cp -R /etc/apt/trusted.gpg.d/             scripts/repository/inst-min-con-00-apt-custom-repository/

cp ~/.gnupg/trustedkeys.gpg scripts/repository/inst-min-con-00-apt-custom-repository/
The following signatures couldn't be verified because the public key is not available: NO_PUBKEY A03BE326C0EF29A4
    
# Workflow
    git pull https://github.com/xuanngo2001/cust-live-deb.git
    git pull https://github.com/xuanngo2001/cust-live-deb.wiki.git
    # On the same directory.
    
    chmod +x *.sh
    chmod +x scripts/*.sh
    chmod +x scripts/repository/*.sh
    chmod +x ../cust-live-deb.wiki/git-common-commits.sh
    
    # Display package size and runtime of the latest build.
        ./home.sh
    
    # List of total size.
        ./sort-size.sh | grep zclean-99 | sort | grep work_no_proxy > a.csv
    
