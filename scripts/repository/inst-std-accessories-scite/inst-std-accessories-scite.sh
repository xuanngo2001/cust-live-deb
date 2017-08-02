#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

apt-get -y install scite

# Modify Scite configurations
SCITE_CONFIG_FILE=/etc/scite/SciTEGlobal.properties
if [ ! -f ${SCITE_CONFIG_FILE}.bck ]; then
  cp -n ${SCITE_CONFIG_FILE} ${SCITE_CONFIG_FILE}.bck
  cat scite-config.txt >> ${SCITE_CONFIG_FILE}
  
  # Add the $(all.files)\ right after open.filter so that I can see all the files when I open the file dialog
  # Debug: sed "s/open.filter=\\\/open.filter=\\\xuan\\n\$(all.files)\\\xuan\\nxuan/" /etc/scite/SciTEGlobal.properties | grep xuan
  sed -i "s/open.filter=\\\/open.filter=\\\\\n\$(all.files)\\\/" /etc/scite/SciTEGlobal.properties

else
  echo "${GV_LOG} * ERROR: ${SCRIPT_NAME} failed!"
  echo "${GV_LOG} * ${SCITE_CONFIG_FILE}.bck already exists."
fi

# To shut up warning message: "(scite:1224): WARNING **: Error retrieving accessibility bus address: org.freedesktop.DBus.Error.ServiceUnknown: The name org.a11y.Bus was not provided by any .service files"
# Install this package.
apt-get -y install at-spi2-core

# Insert scite in Accessories menu.
sed -i "/Accessories\">/ r jwmrc-menus-acc-scite.xml" "${CLD_JWMRC_DIR}/jwmrc-menus.xml"

# Log
echo "${GV_LOG} * Install Text Editor: SciTE."
echo "${GV_LOG} * Install at-spi2-core to shut up Accessibility warning message."
echo "${GV_LOG} * Insert SciTE in Accessories menu."