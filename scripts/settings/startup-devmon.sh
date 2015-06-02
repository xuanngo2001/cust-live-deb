
# Start devmon on startup so that devices are automounted.
#  Note: You need ntfs-3g driver to be able to write on ntfs partition.
/usr/bin/devmon 2>&1 | tee -a /dev/shm/devmon.log &

