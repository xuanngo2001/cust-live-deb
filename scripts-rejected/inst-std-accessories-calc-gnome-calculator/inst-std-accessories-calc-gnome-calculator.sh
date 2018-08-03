#!/bin/bash

# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

# Install galculator
apt-get -y --force-yes install gnome-calculator

# Log
echo "${GV_LOG} * Install calculator: gnome-calculator."

# REJECTION: 
#   Note: Gnome has 52528K overhead.
#
#   * Running inst-std-accessories-calc-calcoo.sh ...
#     * After this operation, 123 kB of additional disk space will be used.
#     * Install calculator: calcoo.
#     * Disk size = 2715708K. Space Used = 220K.
#   * Running inst-std-accessories-calc-gnome-calculator.sh ...
#     * After this operation, 66.4 MB of additional disk space will be used.
#     * Install calculator: gnome-calculator.
#     * Disk size = 2777428K. Space Used = 61720K.
#   * Running inst-std-accessories-calc-qalculate-gtk.sh ...
#     * After this operation, 8,248 kB of additional disk space will be used.
#     * Install calculator: qalculate-gtk.
#     * Disk size = 2788156K. Space Used = 10728K.
#   * Running inst-std-accessories-calc-speedcrunch.sh ...
#     * After this operation, 1,830 kB of additional disk space will be used.
#     * Install calculator: speedcrunch.
#     * Disk size = 2791292K. Space Used = 3136K.
#   * Running inst-std-accessories-calc-wcalc.sh ...
#     * After this operation, 1,170 kB of additional disk space will be used.
#     * Install calculator: wcalc.
#     * Disk size = 2793116K. Space Used = 1824K.
#   * Running inst-std-accessories-calc-x11-apps.sh ...
#     * After this operation, 20.8 MB of additional disk space will be used.
#     * Install calculator: xcalc.
#     * Disk size = 2819800K. Space Used = 26684K.
#   * Running inst-std-accessories-galculator.sh ...
#     * After this operation, 1,424 kB of additional disk space will be used.
#     * Install Calculator: galculator.
#     * Insert galculator in Accessories menu.
#     * Disk size = 2825140K. Space Used = 1520K.