#!/bin/bash
set -e
# Description: Tag good build.

## Tag cld
    ./tag-git.sh cld

## Tag aptly
    (
        cd ../aptly/;
        ./master-release-ok.sh > /dev/null
        ./tag-git.sh aptly
    )
