
# Wait for JWM
timeout 5s /bin/bash -c "while ! pgrep Xorg; do sleep 1s; done; sleep 1s"

# Run network manager: WICD.
# wicd-client: virtual package provided by wicd-cli, wicd-curses, wicd-gtk, wicd-kde
/usr/bin/wicd-client -t
