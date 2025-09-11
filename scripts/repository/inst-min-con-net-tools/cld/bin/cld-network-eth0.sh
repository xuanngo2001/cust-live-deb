#!/bin/bash
# ./inst-min-con-net-tools/cld/bin/cld-network-eth0.sh
INTERFACE="eth0" # Replace with your network interface name

echo "Configuring $INTERFACE for DHCP..."

# Backup existing interfaces file
cp /etc/network/interfaces /etc/network/interfaces.bak

# Update interfaces file
cat <<EOF > /etc/network/interfaces
auto lo
iface lo inet loopback

auto $INTERFACE
allow-hotplug $INTERFACE
iface $INTERFACE inet dhcp
EOF

echo "Restarting networking service..."
systemctl restart networking

echo "Network setup complete for $INTERFACE (DHCP)."