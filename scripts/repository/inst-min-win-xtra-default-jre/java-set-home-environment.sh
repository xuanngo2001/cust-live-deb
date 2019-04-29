#!/bin/bash
set -e
# Description: Set JAVA_HOME.

# Get java home directory path.
    java_dir=$(update-alternatives --list java | sed 's|/jre.*||')
    java_home_value="JAVA_HOME=\"${java_dir}\""

# Set java home directory path in /etc/environment.
    java_home_pattern="JAVA_HOME="
    environment_file=/etc/environment
    if grep -q "${java_home_pattern}" "${environment_file}"; then
        sed -i "s|${java_home_patterh}.*|${java_home_value}|" "${environment_file}"
    else
        echo "${java_home_value}" >> "${environment_file}"
    fi

# Echo what is set.
    echo "${java_home_value} => ${environment_file}" 