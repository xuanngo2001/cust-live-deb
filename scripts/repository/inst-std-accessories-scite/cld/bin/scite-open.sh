#!/bin/bash
set -e
# Description: Open script with scite
#   Note: from ./inst-std-accessories-scite/cld/bin/scite-open.sh
this_script=$(basename "${0}")

script_name=$1

# Error handling.
    cmd_eg=$(
        printf "%s\n%s\n%s\n" \
            "  e.g. ./${this_script} <name>" \
            "  e.g. ./${this_script} cld-help.sh" \
    )
    if [ "$#" -eq 0 ]; then
        echo "ERROR: ./${this_script}: Incomplete argument. Aborted!"
        echo "${cmd_eg}"
        exit 1
    fi

    script_path=$(whereis ${script_name} | cut -d':' -f 2 | xargs)
    if [ -z "${script_path}" ]; then
        echo "ERROR: ./${this_script}: ${script_name} doesn't exist. Aborted!"
        echo "${cmd_eg}"
        exit 1        
    fi

# Open script using scite
    scite "${script_path}" &
    echo "${script_path}"