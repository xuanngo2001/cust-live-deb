#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y --force-yes install ntpdate

# Log
echo "${GV_LOG} * Install client for setting system time from NTP servers: ntpdate."


# REJECTION: ntpdate is deprecated as of September 2012: http://support.ntp.org/bin/view/Dev/DeprecatingNtpdate
#  * Running inst-min-con-ntp.sh ...
#    * After this operation, 1,871 kB of additional disk space will be used.
#    * Install Network Time Protocol: ntp.
#    * Total size = 1207648K. Space Used = 2508K.
#  * Running inst-min-con-ntpdate.sh ...
#    * After this operation, 233 kB of additional disk space will be used.
#    * Install client for setting system time from NTP servers: ntpdate.
#    * Total size = 1207944K. Space Used = 296K.