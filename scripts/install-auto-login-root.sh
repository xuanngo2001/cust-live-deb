SCRIPT_NAME="$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")"
LOG="CLDS:" 
echo "${LOG}>>>>>>>>> Running ${SCRIPT_NAME} ..."


mkdir -pv /etc/systemd/system/getty@tty1.service.d/
cat > /etc/systemd/system/getty@tty1.service.d/autologin.conf<<EOF
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin root %I
EOF
