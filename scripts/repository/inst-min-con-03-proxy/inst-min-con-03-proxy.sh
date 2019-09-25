set -e
# Global variables:
# ${GV_LOG}: Prefix this variable in echo to log echoed string.
# ${GV_SOURCES_LIST}: APT sources list file

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


# PROXY=your_proxy:8080
source proxy.sh

# Get out if there is no proxy.
if [ -z "${PROXY}" ]; then
  echo "${GV_LOG} * Warning: There is no proxy."
  exit 0; # Exit nicely.
fi

## Add proxy setting to /etc/enviroment.
cat > /etc/environment <<EOF
http_proxy="http://${PROXY}"
https_proxy="http://${PROXY}"
ftp_proxy="http://${PROXY}"
HTTP_PROXY="http://${PROXY}"
HTTPS_PROXY="http://${PROXY}"
FTP_PROXY="http://${PROXY}"
no_proxy="localhost,127.0.0.1,qn"
NO_PROXY="localhost,127.0.0.1,qn"
EOF

## Add proxy setting to /etc/apt/apt.conf.d/proxy.
cat > /etc/apt/apt.conf.d/proxy <<EOF
Acquire::http::Proxy "http://${PROXY}";
EOF