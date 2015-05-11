mkdir -pv /etc/systemd/system/getty@tty1.service.d/
cat > /etc/systemd/system/getty@tty1.service.d/autologin.conf<<EOF
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin root %I
EOF
