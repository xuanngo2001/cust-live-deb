#! /bin/sh

### BEGIN INIT INFO
# Provides:          Startup scripts
# Required-Start:    $all
# Required-Stop:     $local_fs
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
# Short-Description: Startup scripts
# Description:       more foo for your bars
### END INIT INFO


# Copy this script to /etc/init.d/
# Chmod +x this script.
# update-rc.d startup.sh defaults
# insserv startup.sh

/usr/bin/devmon 2>&1 | tee -a /dev/shm/devmon.log &


exit 0
