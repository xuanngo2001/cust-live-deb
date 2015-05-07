# Auto login
```
mkdir -pv /etc/systemd/system/getty@tty1.service.d/
cat > /etc/systemd/system/getty@tty1.service.d/autologin.conf<<EOF
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin root %I
EOF

cat /etc/systemd/system/getty@tty1.service.d/autologin.conf
```

* http://forums.debian.net/viewtopic.php?f=5&t=119348#p563096
* http://www.slicesofcomputer.com/2014/10/systemd-hate-console-autologin-on-jessie.html