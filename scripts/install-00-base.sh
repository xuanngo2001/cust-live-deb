apt-get -y --force-yes install dialog dbus
dbus-uuidgen > /var/lib/dbus/machine-id
apt-get -y install linux-image-amd64 live-boot