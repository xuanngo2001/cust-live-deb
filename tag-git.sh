#!/bin/bash
set -e
# Description: Tag good build.

## Tag cld
    date_string=$(date +"%Y-%m-%d.%0k.%M.%S")
    distro_code_name=$(lsb_release -c | cut -d':' -f2 | tr -d ' ' | xargs)
    kernel=$(uname -r | sed 's/-amd64/_amd64/')
    git_tag="${date_string}_${distro_code_name}_K${kernel}"

    # Tag
        git tag "${git_tag}"

    # Display info.
        echo "Tagged cld: ${git_tag}"

## Tag aptly
    (
        cd ../aptly/;
        ./master-release-ok.sh > /dev/null
    )
    # Display info.
        echo "Tagged aptly."
exit
version_codename=$(cat /etc/os-release| grep CODENAME| cut -d'=' -f2)
architecture=$(dpkg --print-architecture)