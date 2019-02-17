#!/bin/bash
set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Explicitly download dependent packages
	apt-get install -d -y libqjson0
	apt-get install -d -y python-future
	apt-get install -d -y python-owslib
	apt-get install -d -y python-pyproj
	apt-get install -d -y python-requests
	apt-get install -d -y python-certifi
		apt-get install -d -y python3-certifi
apt-get install -d -y python3-decorator
apt-get install -d -y python3-nbformat

apt-get install -d -y python3-gdal
apt-get install -d -y python3-matplotlib
apt-get install -d -y libqgis-customwidgets

apt-get install -d -y python-qgis-common
	apt-get install -d -y qttools5-dev-tools
apt-get install -d -y python3-requests
apt-get install -d -y python3-plotly
apt-get install -d -y python3-owslib

apt-get install -d -y libqca-qt5-2 
apt-get install -d -y libqgis-analysis3.4.4
apt-get install -d -y libqgis-app3.4.4
apt-get install -d -y libqgis-core3.4.4
apt-get install -d -y libqgis-gui3.4.4
apt-get install -d -y libqt5concurrent5 
apt-get install -d -y libqt5keychain1 
apt-get install -d -y libqt5positioning5 
apt-get install -d -y libqt5qml5 
apt-get install -d -y libqt5quick5 
apt-get install -d -y libqt5quickwidgets5 
apt-get install -d -y libqt5scintilla2-12v5 
apt-get install -d -y libqt5serialport5 
apt-get install -d -y libqt5sql5 
apt-get install -d -y libqt5webkit5 
apt-get install -d -y libqt5xml5 
apt-get install -d -y libqwt-qt5-6 
apt-get install -d -y python-qgis 
apt-get install -d -y qgis-providers 

apt-get install -d -y python3-pyqt5
apt-get install -d -y python3-pyqt5.qtsql
apt-get install -d -y python3-pyqt5.qtsvg
apt-get install -d -y python3-pyqt5.qtwebkit
apt-get install -d -y python3-sip
apt-get install -d -y python-qgis-common
apt-get install -d -y python3-psycopg2
apt-get install -d -y python3-pyqt5.qsci
apt-get install -d -y python3-httplib2
apt-get install -d -y python3-jinja2
apt-get install -d -y python3-markupsafe
apt-get install -d -y python3-pygments
apt-get install -d -y python3-requests
apt-get install -d -y python3-dateutil
apt-get install -d -y python3-tz
apt-get install -d -y python3-six
apt-get install -d -y python3-yaml
apt-get install -d -y python3-future
apt-get install -d -y python3-plotly
apt-get install -d -y python3-pyproj
apt-get install -d -y python3-owslib
apt-get install -d -y libsqlite3-mod-spatialite
apt-get install -d -y libqt5sql5-sqlite
apt-get install -d -y libqca-qt5-2-plugins


# Install qgis.
	apt-get -y install qgis 

# Log
	echo "${GV_LOG} * Install qgis."
