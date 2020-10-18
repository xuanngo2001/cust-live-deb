#!/bin/bash
set -e
# Description: Tag good build.

repository=$1

# Error handling.
    if [ -z "${repository}" ]; then
        echo "Error: Repository name can't be empty. Aborted!"
        exit 1;
    fi
    
## Tag cld
    date_string=$(date +"%Y-%m-%d.%0k.%M.%S")
    distro_code_name=$(lsb_release -c | cut -d':' -f2 | tr -d ' ' | xargs)
    kernel=$(uname -r | sed 's/-amd64/_amd64/')
    git_tag="${date_string}_${distro_code_name}_K${kernel}"

    # Tag
        git tag "${git_tag}"

    # Display info.
        echo "Tagged ${repository}: ${git_tag}"

exit
version_codename=$(cat /etc/os-release| grep CODENAME| cut -d'=' -f2)
architecture=$(dpkg --print-architecture)