
# Wait for JWM
timeout 5s /bin/bash -c "while ! pgrep Xorg; do sleep 1s; done; sleep 1s"

# Run volwheel on JWN startup.
/usr/bin/volumeicon