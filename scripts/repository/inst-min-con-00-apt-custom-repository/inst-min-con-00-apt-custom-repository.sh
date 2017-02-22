#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Add repository key.
apt-key add aptly-master-key.pub

# Insert local repository at the beginning of the sources.list file.
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_aptly-nightly-main nightly main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_deb-multimedia-main jessie main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_deb-multimedia-non-free jessie non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_google-main stable main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-backports-contrib jessie-backports contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-backports-main jessie-backports main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-backports-non-free jessie-backports non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-contrib jessie contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-main jessie main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-non-free jessie non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-security-contrib jessie-updates contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-security-main jessie-updates main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-security-non-free jessie-updates non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-updates-contrib jessie-updates contrib"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-updates-main jessie-updates main"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_jessie-updates-non-free jessie-updates non-free"
GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/master_virtualbox-contrib jessie contrib"

#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/aptly-nightly-main nightly main"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/deb-multimedia-main jessie main"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/deb-multimedia-non-free jessie non-free"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-backports-contrib jessie-backports contrib"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-backports-main jessie-backports main"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-backports-non-free jessie-backports non-free"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-contrib jessie contrib"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-main jessie main"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-non-free jessie non-free"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-security-contrib jessie-updates contrib"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-security-main jessie-updates main"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-security-non-free jessie-updates non-free"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-updates-contrib jessie-updates contrib"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-updates-main jessie-updates main"
#GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/jessie-updates-non-free jessie-updates non-free"
##GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/virtualbox-contrib jessie contrib"
##GF_ADD_SOURCE_LIST tmp "deb http://localhost/aptly-repo/zfsonlinux-main jessie main"



# Add default sources list
GF_ADD_SOURCE_LIST live "deb http://ftp.debian.org/debian jessie main contrib non-free"
GF_ADD_SOURCE_LIST live "deb http://security.debian.org/ jessie/updates main contrib non-free"
GF_ADD_SOURCE_LIST live "deb http://ftp.debian.org/debian/ jessie-updates main contrib non-free"

# Update source.list
apt-get update