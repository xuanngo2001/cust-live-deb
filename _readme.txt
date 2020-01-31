# Workflow
    git pull https://github.com/xuanngo2001/cust-live-deb.git
    git pull https://github.com/xuanngo2001/cust-live-deb.wiki.git
    # On the same directory.
    
    chmod +x cust-live-deb.wiki/git-common-commits.sh 
    
    # Display package size and runtime of the latest build.
        ./home.sh
    
    # List of total size.
        ./sort-size.sh | grep zclean-99 | sort | grep work_no_proxy > a.csv
    
