#!/bin/bash

SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
echo "${GV_LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."

## NOTE: When used 'cat & EOF', it must starts from the beginning of line.

PROXY_STRING=proxy.wdf.sap.corp

### Add proxy in /etc/environment
ENV_FILE=/etc/environment

if ! grep "${PROXY_STRING}" "${ENV_FILE}"
then
	cat >> ${ENV_FILE} <<EOF
http_proxy="http://${PROXY_STRING}:8080"
https_proxy="http://${PROXY_STRING}:8080"
ftp_proxy="http://${PROXY_STRING}:8080"
no_proxy="localhost,127.0.0.1,sap.corp"
HTTP_PROXY="http://${PROXY_STRING}:8080"
HTTPS_PROXY="http://${PROXY_STRING}:8080"
FTP_PROXY="http://${PROXY_STRING}:8080"
NO_PROXY="localhost,127.0.0.1,sap.corp"
EOF
	
	echo "Added ${PROXY_STRING} proxies in ${ENV_FILE}."
fi



# Make the environment variables take effects for the current terminal.
# http://superuser.com/a/339652
#source /etc/environment

### Add proxy in /etc/apt/apt.conf
APT_CONF_PATH=/etc/apt/apt.conf.d

if [ -d "${APT_CONF_PATH}" ]
then
  APT_CONF_PATH=${APT_CONF_PATH}/proxy
else
  APT_CONF_PATH=/etc/apt/apt.conf
fi

if ! grep "${PROXY_STRING}" "${APT_CONF_PATH}"
then

	cat >> "${APT_CONF_PATH}" <<EOF
Acquire::http::proxy "http://${PROXY_STRING}:8080/";
Acquire::ftp::proxy "ftp://${PROXY_STRING}:8080/";
Acquire::https::proxy "https://${PROXY_STRING}:8080/";
EOF
	
	echo "Added ${PROXY_STRING} proxies in ${APT_CONF_PATH}."
fi

# Log
echo "${GV_LOG} * Add proxy to ${ENV_FILE} and ${APT_CONF_PATH}."


### Test
# cat /etc/environment
# cat /etc/apt/apt.conf or cat ${APT_CONF_PATH}/proxy
