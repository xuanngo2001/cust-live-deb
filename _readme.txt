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
    
    # After running ./build.sh, check ./qcheck.sh log for:
        - error.
        - file or directory not found.