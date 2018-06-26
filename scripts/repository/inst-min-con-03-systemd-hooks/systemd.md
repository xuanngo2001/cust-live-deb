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

# Test

      #!/bin/bash
      set -e
      # Description: systemd-test-on-shutdown.sh
      DATE_STRING=$(date +"%Y-%m-%d.%0k.%M.%S")
      echo "$0: ${DATE_STRING}" > /root/${DATE_STRING}.log

    #---------------------------------------------------
    
      #!/bin/bash
      set -e
      
      # Set permission.
      SERVICE_NAME=cld-systemd-start-stop.service
      chmod 664 "${SERVICE_NAME}"
      
      # Register unit files
      yes | cp -av *.service /etc/systemd/system/
      
      systemctl enable "${SERVICE_NAME}"
      
      journalctl --no-pager | grep cld
      
      systemctl list-jobs || true
      
      systemctl cat "${SERVICE_NAME}"
      
      cp -av systemd-test-on-shutdown.sh runlevel/before-shutdown/
    

    
# Service file
Shutdown scripts are not ran if you use combinations of:
* Type=oneshot, RemainAfterExit=yes
* Type=forking, PIDFile=/some/path/file.pid

Only **Type=simple** works.

