#!/bin/bash
set -e
# Description: Tag good build.
script_name=$(basename "${0}")

date_string=$1
repository=$2

# Error handling.
    cmd_eg=$(printf "%s\n%s\n%s\n" \
            "  e.g. ${script_name} <date_string> <repository>"\
            "  e.g. ${script_name} 2020-10-21.17.30.00 cld"\
    )

    if [ -z "${date_string}" ]; then
        echo "Error: <date_string> can't be empty. Aborted!"
        echo "${cmd_eg}"
        exit 1;
    fi

    if [ -z "${repository}" ]; then
        echo "Error: Repository name can't be empty. Aborted!"
        echo "${cmd_eg}"
        exit 1;
    fi
    
## Tag cld
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