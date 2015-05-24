#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

### Install Chinese fonts so that it display correctly in Iceweseal/Firefox and in the console.
apt-get -y --force-yes install fonts-hanazono
# fonts-arphic-ukai fonts-arphic-uming
# fonts-hanazono


# Log
echo "${GV_LOG} * Install fonts-hanazono to display Asian characters correctly."
echo "${GV_LOG} * Test it by opening website http://ctext.org/zh."

### Test
# Open http://ctext.org/zh
# Open http://ctext.org/font-test-page


### Varia
# http://fonts.jp/hanazono/
# Other languages: http://meta.wikimedia.org/wiki/List_of_Wikipedias

    
### LinuxMing fonts:
#apt-get -y --force-yes install fonts-beng
#apt-get -y --force-yes install fonts-beng-extra
#apt-get -y --force-yes install fonts-cantarell
#apt-get -y --force-yes install fonts-dejavu
#apt-get -y --force-yes install fonts-dejavu-core
#apt-get -y --force-yes install fonts-dejavu-extra
#apt-get -y --force-yes install fonts-droid
#apt-get -y --force-yes install fonts-freefont-ttf
#apt-get -y --force-yes install fonts-gujr
#apt-get -y --force-yes install fonts-gujr-extra
#apt-get -y --force-yes install fonts-guru
#apt-get -y --force-yes install fonts-guru-extra
#apt-get -y --force-yes install fonts-kacst
#apt-get -y --force-yes install fonts-kacst-one
#apt-get -y --force-yes install fonts-lao
#apt-get -y --force-yes install fonts-liberation
#apt-get -y --force-yes install fonts-lklug-sinhala
#apt-get -y --force-yes install fonts-lohit-beng-assamese
#apt-get -y --force-yes install fonts-lohit-beng-bengali
#apt-get -y --force-yes install fonts-lohit-gujr
#apt-get -y --force-yes install fonts-lohit-guru
#apt-get -y --force-yes install fonts-lohit-taml
#apt-get -y --force-yes install fonts-lohit-telu
#apt-get -y --force-yes install fonts-nanum
#apt-get -y --force-yes install fonts-opensymbol
#apt-get -y --force-yes install fonts-samyak-gujr
#apt-get -y --force-yes install fonts-samyak-taml
#apt-get -y --force-yes install fonts-sil-abyssinica
#apt-get -y --force-yes install fonts-sil-gentium
#apt-get -y --force-yes install fonts-sil-gentium-basic
#apt-get -y --force-yes install fonts-sil-padauk
#apt-get -y --force-yes install fonts-taml
#apt-get -y --force-yes install fonts-telu
#apt-get -y --force-yes install fonts-telu-extra
#apt-get -y --force-yes install fonts-thai-tlwg
#apt-get -y --force-yes install fonts-tibetan-machine
#apt-get -y --force-yes install fonts-tlwg-garuda
#apt-get -y --force-yes install fonts-tlwg-kinnari
#apt-get -y --force-yes install fonts-tlwg-loma
#apt-get -y --force-yes install fonts-tlwg-mono
#apt-get -y --force-yes install fonts-tlwg-norasi
#apt-get -y --force-yes install fonts-tlwg-purisa
#apt-get -y --force-yes install fonts-tlwg-sawasdee
#apt-get -y --force-yes install fonts-tlwg-typewriter
#apt-get -y --force-yes install fonts-tlwg-typist
#apt-get -y --force-yes install fonts-tlwg-typo
#apt-get -y --force-yes install fonts-tlwg-umpush
#apt-get -y --force-yes install fonts-tlwg-waree
