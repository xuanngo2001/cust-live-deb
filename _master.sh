#!/bin/bash
# Description: Setup /media/master/ partition.
set -e
# All GNU PG keys are in ~/.gnupg/trustedkeys.gpg.
# Catch-22: Run this script once. Otherwise, ~/.aptly will be linked to new folder on new disk.
script_name=$(basename "${0}")

# REPLACE IN THIS SCRIPT.
    # Last deb-repo-0X to new deb-repo-0Y.
    # Previous deb-repo-0W to deb-repo-0X

# Clear GNU PG keys.
    (
        cd ~/.gnupg/;
        rm -rf ~/.gnupg/*;
        
        # Need these. Otherwise, gnupg will complain.
        mkdir -p  ~/.gnupg/private-keys-v1.d
        chmod 700 ~/.gnupg/private-keys-v1.d        
    )

# Generate new GNU PG key to sign.
    (
        cd /media/master/github/aptly/conf/gnupg2
        
        # Delete and create new key.
        rm -f aptly-gpg-generate-keys.sh.p*.key.*
        ./aptly-gpg-generate-keys.sh
        
        # Add public key in /etc/apt/ and ~/.gnupg
        cat aptly-gpg-generate-keys.sh.public.key.pub | gpg --no-default-keyring --keyring /etc/apt/trusted.gpg --import -
        cat aptly-gpg-generate-keys.sh.public.key.pub | gpg --no-default-keyring --keyring ~/.gnupg/trustedkeys.gpg --import -
        
        # Copy to local ../github/aptly/
        yes | cp -av aptly-gpg-generate-keys.sh.p*.key.* /media/master/github/aptly/
    )
    
# Add new hard drive for Aptly.
    # Make dir structure.
        mkdir -p /media/deb-repo-05/data/.aptly
        
    # Copy data only.
        (
            cd /media/deb-repo-04/data/.aptly
            cp -a pool public /media/deb-repo-05/data/.aptly
        )
    
    # Make deb-repo-05/ executable for Apache.
        chmod 755 /media/deb-repo-05/

# Redirect ~/.aptly to new hard disk. Otherwise, it will run out of disk space.
    export FB_APTLY_CONFIG_DIR=/media/deb-repo-05/data/.aptly
    symbolic-link.sh "${FB_APTLY_CONFIG_DIR}" ~/.aptly

    export FB_APTLY_APACHE_DIR=/media/deb-repo-05/data/.aptly/public/
    apache-www-link.sh "${FB_APTLY_APACHE_DIR}" aptly-repo

# Add missing keys to trusted keyring. 
    # Run /aptly/mirrors-rebuild.sh to get all missing keys.
        ( cd /media/master/github/aptly/; ./mirrors-rebuild.sh ) 2>&1 | tee "${script_name}_missing_keys.txt"
        cat "${script_name}_missing_keys.txt" | grep 'pool.sks-keyservers.net' | sed 's/.*recv-keys //' | tr ' ' '\n' | sort | uniq | xargs
        
    # Don't know why you are forced to import into ~/.gnupg/trustedkeys.gpg.
        keys=(112695A0E562B32A 5C808C2B65558117 A2F683C52980AECF AA8E81B4331F7F50 DCC9EFBF77E11517 F1656F24C74CD1D8 7638D0442B90D010 9D6D8F6BC857C906 EF0F382A1A7B6500)
        gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys ${keys[@]}

        gpg --no-default-keyring -a --export ${keys[@]} \
            | gpg --no-default-keyring --keyring ~/.gnupg/trustedkeys.gpg --import -
    
    # Re-run.
        ( cd /media/master/github/aptly/; ./mirrors-rebuild.sh && ./master-rebuild.sh && ./aptly-update-cld.sh ) 2>&1 | tee "${script_name}_missing_keys.txt"
        cat "${script_name}_missing_keys.txt" | grep 'pool.sks-keyservers.net' | sed 's/.*recv-keys //' | tr ' ' '\n' | sort | uniq | xargs
        
# Copy keys from ~/.gnupg/ to be reused permanently.
    mkdir -p /media/deb-repo-05/config/gnupg
    chown -R $(whoami) /media/deb-repo-05/config/gnupg
    find /media/deb-repo-05/config/gnupg -type f -exec chmod 600 {} \;
    find /media/deb-repo-05/config/gnupg -type d -exec chmod 700 {} \;

    cp -a ~/.gnupg/* /media/deb-repo-05/config/gnupg

# TESTING new key.
    echo "deb http://localhost/aptly-repo/master_aptly-main squeeze main" >> /etc/apt/sources.list
    apt-get update

# Update the following FB_* variable to point the new path: ../firstboot-work/scripts/xtra-work-aptly
    # $FB_APTLY_GNUPG_DIR
    # $FB_APTLY_CONFIG_DIR
    # $FB_APTLY_APACHE_DIR
    
# REBOOT.
