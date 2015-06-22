#!/bin/bash
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SETTINGS_DIR}: Hold settings data.
# ${GV_BINARY_DIR}: Hold settings binary data.

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

PROXY=your_proxy:8080


## Add proxy setting to /etc/enviroment.
cat > /etc/environment <<EOF
http_proxy="http://${PROXY}"
https_proxy="http://${PROXY}"
ftp_proxy="http://${PROXY}"
HTTP_PROXY="http://${PROXY}"
HTTPS_PROXY="http://${PROXY}"
FTP_PROXY="http://${PROXY}"
no_proxy="localhost,127.0.0.1"
NO_PROXY="localhost,127.0.0.1"
EOF

## Add proxy setting to /etc/apt/apt.conf.d/proxy.
cat > /etc/apt/apt.conf.d/proxy <<EOF
Acquire::http::Proxy "http://${PROXY}";
EOF