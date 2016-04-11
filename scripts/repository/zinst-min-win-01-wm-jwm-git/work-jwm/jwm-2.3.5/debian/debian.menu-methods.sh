#!/bin/sh
# [Developer only]
# This is debugging script for menu methods.
#
# To make real test, run these:
#
#   cp jwm.menu-method /etc/menu-methods/jwm
#   update-menus"

bin=./jwm.menu-method

chmod +x $bin

# This was exerpted from: update-menus --stdout > /tmp/menu-stdin
$bin -v <<EOF
!F /usr/share/menu/jwm
command="/usr/bin/jwm" needs="wm" package="jwm" section="WindowManagers" title="Jwm"
!L 7
command="exit" needs="jwm" package="jwm" section="WindowManagers" title="Exit"
!L 11
command="restart" needs="jwm" package="jwm" section="WindowManagers" title="Restart"
EOF

# End of file
