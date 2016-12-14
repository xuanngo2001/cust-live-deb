#!/bin/bash
# Description: Create comparable log file: remove unnecessary information.

LOG_FILE=$1

LOG_CONTENT_CLEAN=$(cat "${LOG_FILE}" | grep -v "Get:[0-9]* http://")


LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -v "^Fetched ")
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -v "upgraded, [0-9]* newly installed, [0-9]* to remove and [0-9]* not upgraded.")
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -v "^After this operation, ")


LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Hit http://')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Ign http://')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv '(Reading database ')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Preparing to unpack')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Unpacking ')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Setting up ')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Need to get ')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Selecting previously')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Processing triggers')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Reading package lists')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Building dependency tree')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Selecting previously')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Reading state information')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Selecting')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Selecting')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Selecting')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv 'Selecting')


LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv '.........................................................')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | grep -Fv ' .......... .......... ')
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | sed "s/Disk size = [0-9]*K. Space Used = [0-9]*K./Disk size = ?K. Space Used = ?K./")
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | sed "s/[0-9]* kB/? ?/g")
LOG_CONTENT_CLEAN=$(echo "${LOG_CONTENT_CLEAN}" | sed "s/[0-9]*\.[0-9]* MB/? ?/g")



echo "${LOG_CONTENT_CLEAN}" > "${LOG_FILE}.cmp"