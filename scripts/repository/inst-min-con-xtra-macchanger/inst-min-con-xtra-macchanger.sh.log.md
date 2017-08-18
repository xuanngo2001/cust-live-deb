* >>>>>>>>> Running inst-min-con-xtra-macchanger.sh ...
  * After this operation, 651 kB of additional disk space will be used.
  * Install macchanger.
  * Set macchanger to change MAC address whenever network device is up or down.
  * To configure macchanger: dpkg-reconfigure macchanger.
  * Check whether it is working: macchanger -s enp0s3.
  * systemctl status macchanger@enp0s3.service
  * Disk size = 1763352K. Space Used = 904K.
  * The following NEW packages will be installed:
  ```bash
  macchanger
  ```
