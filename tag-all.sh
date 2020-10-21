#!/bin/bash
set -e
# Description: Tag good build.
date_string=$(date +"%Y-%m-%d.%0k.%M.%S")

## Tag cld
    ./tag-git.sh "${date_string}" cld

## Tag aptly
    (
        cd ../aptly/;
        ./master-release.sh "tag-${date_string}" > /dev/null
        ./tag-git.sh "${date_string}" aptly
    )
