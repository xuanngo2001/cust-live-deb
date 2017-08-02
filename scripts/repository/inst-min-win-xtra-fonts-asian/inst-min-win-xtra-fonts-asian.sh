#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

### Install Chinese fonts so that it display correctly in Iceweseal/Firefox and in the console.
apt-get -y install fonts-hanazono
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

    
### LinuxMint fonts:
#apt-get -y install fonts-beng
#apt-get -y install fonts-beng-extra
#apt-get -y install fonts-cantarell
#apt-get -y install fonts-dejavu
#apt-get -y install fonts-dejavu-core
#apt-get -y install fonts-dejavu-extra
#apt-get -y install fonts-droid
#apt-get -y install fonts-freefont-ttf
#apt-get -y install fonts-gujr
#apt-get -y install fonts-gujr-extra
#apt-get -y install fonts-guru
#apt-get -y install fonts-guru-extra
#apt-get -y install fonts-kacst
#apt-get -y install fonts-kacst-one
#apt-get -y install fonts-lao
#apt-get -y install fonts-liberation
#apt-get -y install fonts-lklug-sinhala
#apt-get -y install fonts-lohit-beng-assamese
#apt-get -y install fonts-lohit-beng-bengali
#apt-get -y install fonts-lohit-gujr
#apt-get -y install fonts-lohit-guru
#apt-get -y install fonts-lohit-taml
#apt-get -y install fonts-lohit-telu
#apt-get -y install fonts-nanum
#apt-get -y install fonts-opensymbol
#apt-get -y install fonts-samyak-gujr
#apt-get -y install fonts-samyak-taml
#apt-get -y install fonts-sil-abyssinica
#apt-get -y install fonts-sil-gentium
#apt-get -y install fonts-sil-gentium-basic
#apt-get -y install fonts-sil-padauk
#apt-get -y install fonts-taml
#apt-get -y install fonts-telu
#apt-get -y install fonts-telu-extra
#apt-get -y install fonts-thai-tlwg
#apt-get -y install fonts-tibetan-machine
#apt-get -y install fonts-tlwg-garuda
#apt-get -y install fonts-tlwg-kinnari
#apt-get -y install fonts-tlwg-loma
#apt-get -y install fonts-tlwg-mono
#apt-get -y install fonts-tlwg-norasi
#apt-get -y install fonts-tlwg-purisa
#apt-get -y install fonts-tlwg-sawasdee
#apt-get -y install fonts-tlwg-typewriter
#apt-get -y install fonts-tlwg-typist
#apt-get -y install fonts-tlwg-typo
#apt-get -y install fonts-tlwg-umpush
#apt-get -y install fonts-tlwg-waree
