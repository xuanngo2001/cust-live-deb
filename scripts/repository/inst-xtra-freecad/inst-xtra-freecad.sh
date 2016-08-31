#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_CLD_ROOT_DIR}: Hold settings and scripts files for Cust-Live-Deb.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages.
apt-get -d -y --force-yes install python-pivy
apt-get -d -y --force-yes install python-qt4-gl
apt-get -d -y --force-yes install python-qt4
apt-get -d -y --force-yes install python-sip
apt-get -d -y --force-yes install python-pyside
apt-get -d -y --force-yes install python-pyside.qtwebkit
apt-get -d -y --force-yes install python-pyside.qtuitools
apt-get -d -y --force-yes install python-pyside.qtxml
apt-get -d -y --force-yes install python-pyside.qttest
apt-get -d -y --force-yes install python-pyside.qtsvg
apt-get -d -y --force-yes install python-pyside.qtsql
apt-get -d -y --force-yes install python-pyside.qtscript
apt-get -d -y --force-yes install python-pyside.qtopengl
apt-get -d -y --force-yes install python-pyside.qthelp
apt-get -d -y --force-yes install python-pyside.qtdeclarative
apt-get -d -y --force-yes install python-pyside.qtnetwork
apt-get -d -y --force-yes install python-pyside.phonon
apt-get -d -y --force-yes install python-pyside.qtgui
apt-get -d -y --force-yes install python-pyside.qtcore
apt-get -d -y --force-yes install python-ply
apt-get -d -y --force-yes install python-matplotlib
apt-get -d -y --force-yes install python-nose
apt-get -d -y --force-yes install python-pkg-resources
apt-get -d -y --force-yes install python-mock
apt-get -d -y --force-yes install python-tz
apt-get -d -y --force-yes install python-pyparsing
apt-get -d -y --force-yes install python-matplotlib-data
apt-get -d -y --force-yes install python-collada
apt-get -d -y --force-yes install python-lxml
apt-get -d -y --force-yes install python-dateutil
apt-get -d -y --force-yes install python-six
apt-get -d -y --force-yes install phonon
apt-get -d -y --force-yes install libzipios++0c2a
apt-get -d -y --force-yes install libsoqt4-20
apt-get -d -y --force-yes install libjs-sphinxdoc
apt-get -d -y --force-yes install libjs-underscore
apt-get -d -y --force-yes install fonts-lyx
apt-get -d -y --force-yes install liboce-ocaf8
apt-get -d -y --force-yes install liboce-visualization8
apt-get -d -y --force-yes install libgl2ps0
apt-get -d -y --force-yes install libfreeimage3
apt-get -d -y --force-yes install liboce-ocaf-lite8
apt-get -d -y --force-yes install liboce-modeling8
apt-get -d -y --force-yes install liboce-foundation8
apt-get -d -y --force-yes install libvcdinfo0
apt-get -d -y --force-yes install libiso9660-8
apt-get -d -y --force-yes install libtwolame0
apt-get -d -y --force-yes install libsidplay2
apt-get -d -y --force-yes install libresid-builder0c2a
apt-get -d -y --force-yes install libmodplug1
apt-get -d -y --force-yes install libkate1
apt-get -d -y --force-yes install libgme0
apt-get -d -y --force-yes install libcddb2
apt-get -d -y --force-yes install liba52-0.7.4
apt-get -d -y --force-yes install libupnp6
apt-get -d -y --force-yes install libtk8.6
apt-get -d -y --force-yes install libtcl8.6
apt-get -d -y --force-yes install libspeexdsp1
apt-get -d -y --force-yes install libshout3
apt-get -d -y --force-yes install libshine3
apt-get -d -y --force-yes install libqtwebkit4
apt-get -d -y --force-yes install libqtassistantclient4
apt-get -d -y --force-yes install libqt4-test
apt-get -d -y --force-yes install libqt4-scripttools
apt-get -d -y --force-yes install libqt4-opengl
apt-get -d -y --force-yes install libqt4-help
apt-get -d -y --force-yes install libqt4-designer
apt-get -d -y --force-yes install libqt4-declarative
apt-get -d -y --force-yes install libqt4-xmlpatterns
apt-get -d -y --force-yes install libqt4-sql
apt-get -d -y --force-yes install libqt4-script
apt-get -d -y --force-yes install libpyside1.2
apt-get -d -y --force-yes install phonon-backend-vlc
apt-get -d -y --force-yes install vlc-nox
apt-get -d -y --force-yes install libshiboken1.2
apt-get -d -y --force-yes install libphonon4
apt-get -d -y --force-yes install libqt4-dbus
apt-get -d -y --force-yes install qdbus
apt-get -d -y --force-yes install qtchooser
apt-get -d -y --force-yes install libpulse-mainloop-glib0
apt-get -d -y --force-yes install libmpeg2-4
apt-get -d -y --force-yes install libmpcdec6
apt-get -d -y --force-yes install libmad0
apt-get -d -y --force-yes install libgstreamer-plugins-base1.0-0
apt-get -d -y --force-yes install libvlc5
apt-get -d -y --force-yes install libvlccore8
apt-get -d -y --force-yes install iso-codes
apt-get -d -y --force-yes install vlc-data
apt-get -d -y --force-yes install libgstreamer1.0-0
apt-get -d -y --force-yes install libfaad2
apt-get -d -y --force-yes install libcoin80
apt-get -d -y --force-yes install libusageenvironment2
apt-get -d -y --force-yes install libmatroska6
apt-get -d -y --force-yes install liblivemedia42
apt-get -d -y --force-yes install libxerces-c3.1
apt-get -d -y --force-yes install libgroupsock4
apt-get -d -y --force-yes install libebml4
apt-get -d -y --force-yes install libdvbpsi9
apt-get -d -y --force-yes install libdca0
apt-get -d -y --force-yes install libboost-signals1.55.0
apt-get -d -y --force-yes install libchromaprint0
apt-get -d -y --force-yes install libboost-program-options1.55.0
apt-get -d -y --force-yes install libbasicusageenvironment0

apt-get -d -y --force-yes install pyside-tools

apt-get -d -y --force-yes install libboost-python1.55.0

# Install freecad.
apt-get -y --force-yes install freecad

# Insert FreeCAD menu in Graphics
sed -i "/Graphics\">/ r jwmrc-menus-graphics-freecad.xml" "${GV_CLD_ROOT_DIR}/jwmrc-menus.xml"
    
# Log
echo "${GV_LOG} * Install freecad."