# Auto generated by ./aptly-update-cld.sh.
GF_ADD_SOURCE_LIST live "deb http://ftp.debian.org/debian bookworm main contrib non-free"
GF_ADD_SOURCE_LIST live "deb http://ftp.debian.org/debian/ bookworm-updates main contrib non-free"

# Add security source url but don't upgrade security package. It might brake or remove packages.
GF_ADD_SOURCE_LIST live "deb http://security.debian.org/ bookworm-security main contrib non-free"

GF_ADD_SOURCE_LIST live "deb http://http.debian.net/debian bookworm-backports main contrib non-free"

