https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/7/html/System_Administrators_Guide/sect-Managing_Services_with_systemd-Unit_Files.html

https://fedoramagazine.org/systemd-unit-dependencies-and-order/
https://wiki.archlinux.org/index.php/systemd
http://unix.stackexchange.com/questions/284598/systemd-how-to-execute-script-at-shutdown-only-not-at-reboot


    # Get available target
    systemctl list-units --type=target --no-pager
    
    # Get executed targets in order
    systemd-analyze critical-chain --no-pager
    
    # Target dependency graph
    systemd-analyze dot --to-pattern='*.target' --from-pattern='*.target' | dot -Tsvg > targets.svg
    
    # Main target explained
    https://wiki.archlinux.org/index.php/systemd#Targets_table
    
    # List of jobs running
    systemctl list-jobs
    
# Service file
Shutdown scripts are not ran if you use combinations of:
* Type=oneshot, RemainAfterExit=yes
* Type=forking, PIDFile=/some/path/file.pid

Only **Type=simple** works.