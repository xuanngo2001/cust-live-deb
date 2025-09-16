#!/bin/bash
set -e
# Description: Setup Hyper-V modules in initramfs so that you can copy and paste text between Windows host and Linux guest.
this_script=$(basename "${0}")

# Add hyperv settings to /etc/initramfs-tools/modules.
    hyperv_config_start="### Hyper-V modules: START ###"
    hyperv_config_end="### Hyper-V modules: END ###"

    # Remove between patterns, including patterns.
    sed -i --follow-symlinks "/${hyperv_config_start}/,/${hyperv_config_end}/d" /etc/initramfs-tools/modules

    # Add hyperv settings to /etc/initramfs-tools/modules.
    {
        echo "${hyperv_config_start}"
cat << 'EOF'
hv_vmbus
hv_storvsc
hv_blkvsc
hv_netvsc
EOF
        echo "${hyperv_config_end}"
    } >> /etc/initramfs-tools/modules

# Update initramfs.
    update-initramfs -u