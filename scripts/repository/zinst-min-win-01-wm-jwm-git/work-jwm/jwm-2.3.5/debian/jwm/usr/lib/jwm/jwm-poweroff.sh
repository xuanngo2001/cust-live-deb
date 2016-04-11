#!/bin/sh
#
#       Copyright (C) 20007-2008 Jari Aalto
#
#   License
#
#       This program is free software; you can redistribute it and/or
#       modify it under the terms of the GNU General Public License as
#       published by the Free Software Foundation; either version 2 of
#       the License, or (at your option) any later version.
#
#       This program is distributed in the hope that it will be useful, but
#       WITHOUT ANY WARRANTY; without even the implied warranty of
#       MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
#       General Public License for more details.
#
#       Visit <http://www.gnu.org/copyleft/gpl.html>

x-terminal-emulator \
    -name Poweroff \
    -title Poweroff \
    -e /bin/sh -c '/bin/echo give root password for POWEROFF or press C-d to exit; /bin/su -c /sbin/poweroff'

# End of file
