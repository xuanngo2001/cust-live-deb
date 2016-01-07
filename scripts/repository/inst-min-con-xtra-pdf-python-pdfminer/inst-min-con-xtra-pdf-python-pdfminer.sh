#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# Install python-pdfminer.
apt-get -y --force-yes install python-pdfminer


# Log
echo "${GV_LOG} * Install python-pdfminer."

# * >>>>>>>>> Running inst-min-con-xtra-pdf-poppler-utils.sh ...
#   * After this operation, 4,134 kB of additional disk space will be used.
#   * Install poppler-utils.
#   * Disk size = 2468992K. Space Used = 5536K.
#   * The following NEW packages will be installed:
#   ```bash
#   libopenjpeg5 libpoppler46 poppler-utils
#   ```
# * >>>>>>>>> Running inst-min-con-xtra-pdf-python-pdfminer.sh ...
#   * After this operation, 16.9 MB of additional disk space will be used.
#   * Install python-pdfminer.
#   * Disk size = 2500256K. Space Used = 31264K.
#   * The following NEW packages will be installed:
#   ```bash
#   libpython-stdlib libpython2.7-minimal libpython2.7-stdlib mime-support
#   python python-minimal python-pdfminer python2.7 python2.7-minimal
#   ```