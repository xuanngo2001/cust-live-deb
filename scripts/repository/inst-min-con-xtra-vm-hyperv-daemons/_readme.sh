# AI
    - how to setup hyper-v to copy and paste text between windows and linux windows manager
    - how to setup hyperv-daemons in debian

# Reference:
    - https://techlabs.blog/categories/debian-linux/install-linux-integration-services-and-hyper-v-daemons-on-debian
    - https://packages.debian.org/bookworm/amd64/hyperv-daemons/filelist

# Debug
    systemctl list-unit-files --no-page | grep hv
    systemctl start hv-fcopy-daemon
    systemctl status hv-fcopy-daemon


# For Debian 10 (Buster) and earlier:

    # cat this text to /etc/initramfs-tools/modules
    cat << 'EOF' >> /etc/initramfs-tools/modules
    # Hyper-V modules
    hv_vmbus
    hv_storvsc
    hv_blkvsc
    hv_netvsc
    EOF

    # Update initramfs
        update-initramfs -u

# For Debian 11 (Bullseye) and later:
    systemctl status hyperv-daemons.hv-*
    lsmod | grep hv_utils

# Generic 
    Ensure the hv_sock kernel module is enabled. You can do this by creating a file:
    sudo sh -c 'echo "hv_sock" > /etc/modules-load.d/hv_sock.conf'
    Reboot the Linux VM: sudo reboot.