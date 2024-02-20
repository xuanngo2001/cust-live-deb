#!/bin/bash
set -e
# Description: Install PowerShell
#   https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7#debian-10
#	https://learn.microsoft.com/en-us/powershell/scripting/install/install-debian?source=recommendations&view=powershell-7.3

# Variables.
    url=https://github.com/PowerShell/PowerShell/releases/download/v7.0.0/powershell-7.0.0-linux-x64.tar.gz
    tar_gz_version=$(basename "${url}")
    tar_gz="powershell.tar.gz"

# Download the powershell '.tar.gz' archive if it doesn't exist.
    if [ ! -e "${tar_gz_version}" ]; then
            wget -nc "${url}"
            \mv "${tar_gz_version}" "${tar_gz}"
    fi
    ln -s "${tar_gz}" "${tar_gz_version}" || true # Expect to fail if file exists.

# Install.
    # Create the target folder where powershell will be placed
        mkdir -p /opt/microsoft/powershell/7

    # Expand powershell to the target folder
        tar zxf "${tar_gz}" -C /opt/microsoft/powershell/7

    # Set execute permissions
        chmod +x /opt/microsoft/powershell/7/pwsh

    # Create the symbolic link that points to pwsh
        ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh
