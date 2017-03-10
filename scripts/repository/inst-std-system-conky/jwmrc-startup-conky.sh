
# Wait for JWM
timeout 5s /bin/bash -c "while ! pgrep Xorg; do sleep 1s; done; sleep 1s"

# Dynamically configure conkyrc before running conky.
${HOME}/cld/jwmrc-startup-configure-conky.sh

# Run system monitor conky on JWM startup.
/usr/bin/conky

